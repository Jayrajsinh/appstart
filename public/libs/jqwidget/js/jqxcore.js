/*
jQWidgets v2.4.2 (2012-Sep-12)
Copyright (c) 2011-2012 jQWidgets.
License: http://jqwidgets.com/license/
 */

(function(a) {
	a.jqx = a.jqx || {};
	a.jqx.define = function(b, c, d) {
		b[c] = function() {
			if (this.baseType) {
				this.base = new b[this.baseType]();
				this.base.defineInstance()
			}
			this.defineInstance()
		};
		b[c].prototype.defineInstance = function() {
		};
		b[c].prototype.base = null;
		b[c].prototype.baseType = undefined;
		if (d && b[d]) {
			b[c].prototype.baseType = d
		}
	};
	a.jqx.invoke = function(e, d) {
		if (d.length == 0) {
			return
		}
		var f = typeof (d) == Array || d.length > 0 ? d[0] : d;
		var c = typeof (d) == Array || d.length > 1 ? Array.prototype.slice
				.call(d, 1) : a({}).toArray();
		while (e[f] == undefined && e.base != null) {
			e = e.base
		}
		if (e[f] != undefined && a.isFunction(e[f])) {
			return e[f].apply(e, c)
		}
		if (typeof f == "string") {
			var b = f.toLowerCase();
			return e[b].apply(e, c)
		}
		return
	};
	a.jqx.hasFunction = function(e, d) {
		if (d.length == 0) {
			return false
		}
		if (e == undefined) {
			return false
		}
		var f = typeof (d) == Array || d.length > 0 ? d[0] : d;
		var c = typeof (d) == Array || d.length > 1 ? Array.prototype.slice
				.call(d, 1) : {};
		while (e[f] == undefined && e.base != null) {
			e = e.base
		}
		if (e[f] && a.isFunction(e[f])) {
			return true
		}
		if (typeof f == "string") {
			var b = f.toLowerCase();
			if (e[b] && a.isFunction(e[b])) {
				return true
			}
		}
		return false
	};
	a.jqx.isPropertySetter = function(b) {
		if (b.length == 2) {
			return true
		}
		return b.length == 1 && typeof (b[0]) == "object"
	};
	a.jqx.set = function(c, b) {
		if (b.length == 1 && typeof (b[0]) == "object") {
			a.each(b[0], function(d, e) {
				var f = c;
				while (f[d] == undefined && f.base != null) {
					f = f.base
				}
				if (f[d] != undefined || f[d] == null) {
					a.jqx.setvalueraiseevent(f, d, e)
				}
			})
		} else {
			if (b.length == 2) {
				while (c[b[0]] == undefined && c.base) {
					c = c.base
				}
				if (c[b[0]] != undefined || c[b[0]] == null) {
					a.jqx.setvalueraiseevent(c, b[0], b[1])
				}
			}
		}
	};
	a.jqx.setvalueraiseevent = function(c, d, e) {
		var b = c[d];
		c[d] = e;
		if (!c.isInitialized) {
			return
		}
		if (c.propertyChangedHandler != undefined) {
			c.propertyChangedHandler(c, d, b, e)
		}
		if (c.propertyChangeMap != undefined
				&& c.propertyChangeMap[d] != undefined) {
			c.propertyChangeMap[d](c, d, b, e)
		}
	};
	a.jqx.get = function(c, b) {
		if (b == undefined || b == null) {
			return undefined
		}
		if (c[b] != undefined) {
			return c[b]
		}
		if (b.length != 1) {
			return undefined
		}
		while (c[b[0]] == undefined && c.base) {
			c = c.base
		}
		if (c[b[0]] != undefined) {
			return c[b[0]]
		}
	};
	a.jqx.jqxWidgetProxy = function(g, c, b) {
		var d = a(c);
		var f = a.data(c, g);
		if (f == undefined) {
			return undefined
		}
		var e = f.instance;
		if (a.jqx.hasFunction(e, b)) {
			return a.jqx.invoke(e, b)
		}
		if (a.jqx.isPropertySetter(b)) {
			a.jqx.set(e, b);
			return undefined
		} else {
			if (typeof (b) == "object" && b.length == 0) {
				return
			} else {
				if (typeof (b) == "object" && b.length > 0) {
					return a.jqx.get(e, b[0])
				} else {
					if (typeof (b) == "string") {
						return a.jqx.get(e, b)
					}
				}
			}
		}
		throw "jqxCore: Property or method does not exist.";
		return undefined
	};
	a.jqx.jqxWidget = function(b, c, h) {
		try {
			jqxArgs = Array.prototype.slice.call(h, 0)
		} catch (g) {
			jqxArgs = ""
		}
		var f = b;
		var d = "";
		if (c) {
			d = "_" + c
		}
		a.jqx.define(a.jqx, "_" + f, d);
		a.fn[f] = function() {
			var e = Array.prototype.slice.call(arguments, 0);
			var i = null;
			if (e.length == 0 || (e.length == 1 && typeof (e[0]) == "object")) {
				return this.each(function() {
					var n = a(this);
					var m = this;
					var p = a.data(m, f);
					if (p == null) {
						p = {};
						p.element = m;
						p.host = n;
						p.instance = new a.jqx["_" + f]();
						a.data(m, f, p);
						var o = new Array();
						var k = p.instance;
						while (k) {
							k.isInitialized = false;
							o.push(k);
							k = k.base
						}
						o.reverse();
						o[0].theme = "";
						a.jqx.jqxWidgetProxy(f, this, e);
						for ( var l in o) {
							k = o[l];
							if (l == 0) {
								k.host = n;
								k.element = m
							}
							if (k != undefined) {
								if (k.createInstance != null) {
									k.createInstance(e)
								}
							}
						}
						for ( var l in o) {
							if (o[l] != undefined) {
								o[l].isInitialized = true
							}
						}
						p.instance.refresh(true);
						i = this
					} else {
						a.jqx.jqxWidgetProxy(f, this, e)
					}
				})
			} else {
				this.each(function() {
					var k = a.jqx.jqxWidgetProxy(f, this, e);
					if (i == null) {
						i = k
					}
				})
			}
			return i
		};
		try {
			a.extend(a.jqx["_" + f].prototype,
					Array.prototype.slice.call(h, 0)[0])
		} catch (g) {
		}
		a.extend(a.jqx["_" + f].prototype, {
			toThemeProperty : function(e, i) {
				if (this.theme == "") {
					return e
				}
				if (i != null && i) {
					return e + "-" + this.theme
				}
				return e + " " + e + "-" + this.theme
			}
		});
		a.jqx["_" + f].prototype.refresh = function() {
			if (this.base) {
				this.base.refresh()
			}
		};
		a.jqx["_" + f].prototype.createInstance = function() {
		};
		a.jqx["_" + f].prototype.propertyChangeMap = {};
		a.jqx["_" + f].prototype.addHandler = function(l, i, e, k) {
			switch (i) {
			case "mousewheel":
				if (window.addEventListener) {
					if (a.browser.mozilla) {
						l[0].addEventListener("DOMMouseScroll", e, false)
					} else {
						l[0].addEventListener("mousewheel", e, false)
					}
					return false
				}
				break;
			case "mousemove":
				if (window.addEventListener && !k) {
					l[0].addEventListener("mousemove", e, false);
					return false
				}
				break
			}
			if (k == undefined || k == null) {
				l.bind(i, e)
			} else {
				l.bind(i, k, e)
			}
		};
		a.jqx["_" + f].prototype.removeHandler = function(k, i, e) {
			switch (i) {
			case "mousewheel":
				if (window.removeEventListener) {
					if (a.browser.mozilla) {
						k[0].removeEventListener("DOMMouseScroll", e, false)
					} else {
						k[0].removeEventListener("mousewheel", e, false)
					}
					return false
				}
				break
			}
			if (e == undefined) {
				k.unbind(i)
			} else {
				k.unbind(i, e)
			}
		}
	};
	a.jqx.utilities = a.jqx.utilities || {};
	a.extend(a.jqx.utilities,
			{
				createId : function() {
					var b = function() {
						return (((1 + Math.random()) * 65536) | 0).toString(16)
								.substring(1)
					};
					return "jqxWidget" + b() + b() + b()
				},
				setTheme : function(f, g, e) {
					if (typeof e === "undefined") {
						return
					}
					var h = e[0].className.split(" "), b = [], k = [], d = e
							.children();
					for ( var c = 0; c < h.length; c += 1) {
						if (h[c].indexOf(f) >= 0) {
							if (f.length > 0) {
								b.push(h[c]);
								k.push(h[c].replace(f, g))
							} else {
								k.push(h[c] + "-" + g)
							}
						}
					}
					this._removeOldClasses(b, e);
					this._addNewClasses(k, e);
					for ( var c = 0; c < d.length; c += 1) {
						this.setTheme(f, g, a(d[c]))
					}
				},
				_removeOldClasses : function(d, c) {
					for ( var b = 0; b < d.length; b += 1) {
						c.removeClass(d[b])
					}
				},
				_addNewClasses : function(d, c) {
					for ( var b = 0; b < d.length; b += 1) {
						c.addClass(d[b])
					}
				},
				getBrowser : function() {
					var c = navigator.userAgent.toLowerCase();
					var b = /(chrome)[ \/]([\w.]+)/.exec(c)
							|| /(webkit)[ \/]([\w.]+)/.exec(c)
							|| /(opera)(?:.*version|)[ \/]([\w.]+)/.exec(c)
							|| /(msie) ([\w.]+)/.exec(c)
							|| c.indexOf("compatible") < 0
							&& /(mozilla)(?:.*? rv:([\w.]+)|)/.exec(c) || [];
					return {
						browser : b[1] || "",
						version : b[2] || "0"
					}
				}
			});
	a.jqx.mobile = a.jqx.mobile || {};
	a.extend(a.jqx.mobile, {
		_touchListener : function(h, f) {
			var b = function(i, l) {
				var k = document.createEvent("MouseEvents");
				k.initMouseEvent(i, l.bubbles, l.cancelable, l.view, l.detail,
						l.screenX, l.screenY, l.clientX, l.clientY, l.ctrlKey,
						l.altKey, l.shiftKey, l.metaKey, l.button,
						l.relatedTarget);
				k._pageX = l.pageX;
				k._pageY = l.pageY;
				return k
			};
			var g = {
				mousedown : "touchstart",
				mouseup : "touchend",
				mousemove : "touchmove"
			};
			var d = b(g[h.type], h);
			h.target.dispatchEvent(d);
			var c = h.target["on" + g[h.type]];
			if (typeof c === "function") {
				c(h)
			}
		},
		setMobileSimulator : function(c, e) {
			if (this.isTouchDevice()) {
				return
			}
			this.simulatetouches = true;
			if (e == false) {
				this.simulatetouches = false
			}
			var d = {
				mousedown : "touchstart",
				mouseup : "touchend",
				mousemove : "touchmove"
			};
			var b = this;
			if (window.addEventListener) {
				var f = function() {
					for ( var g in d) {
						if (c.addEventListener) {
							c.removeEventListener(g, b._touchListener);
							c.addEventListener(g, b._touchListener, false)
						}
					}
				};
				if (a.browser.msie) {
					f()
				} else {
					window.addEventListener("load", function() {
						f()
					}, false)
				}
			}
		},
		isTouchDevice : function() {
			var b = "Browser CodeName: " + navigator.appCodeName + "";
			b += "Browser Name: " + navigator.appName + "";
			b += "Browser Version: " + navigator.appVersion + "";
			b += "Platform: " + navigator.platform + "";
			b += "User-agent header: " + navigator.userAgent + "";
			if (b.indexOf("Android") != -1) {
				return true
			}
			if (b.indexOf("IEMobile") != -1) {
				return true
			}
			if (b.indexOf("Windows Phone OS") != -1) {
				return true
			}
			if (b.indexOf("Windows Phone 6.5") != -1) {
				return true
			}
			if (b.indexOf("BlackBerry") != -1
					&& b.indexOf("Mobile Safari") != -1) {
				return true
			}
			if (b.indexOf("ipod") != -1) {
				return true
			}
			if (b.indexOf("nokia") != -1 || b.indexOf("Nokia") != -1) {
				return true
			}
			if (b.indexOf("Chrome/17") != -1) {
				return false
			}
			try {
				document.createEvent("TouchEvent");
				return true
			} catch (c) {
				return false
			}
		},
		getLeftPos : function(b) {
			var c = b.offsetLeft;
			while ((b = b.offsetParent) != null) {
				if (b.tagName != "HTML") {
					c += b.offsetLeft;
					if (document.all) {
						c += b.clientLeft
					}
				}
			}
			return c
		},
		getTopPos : function(b) {
			var c = b.offsetTop;
			while ((b = b.offsetParent) != null) {
				if (b.tagName != "HTML") {
					c += (b.offsetTop - b.scrollTop);
					if (document.all) {
						c += b.clientTop
					}
				}
			}
			if (this.isSafariMobileBrowser()) {
				if (this.isSafari4MobileBrowser()
						&& this.isIPadSafariMobileBrowser()) {
					return c
				}
				c = c + a(window).scrollTop()
			}
			return c
		},
		isChromeMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("android") != -1;
			return b
		},
		isOperaMiniMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("opera mini") != -1
					|| c.indexOf("opera mobi") != -1;
			return b
		},
		isOperaMiniBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("opera mini") != -1;
			return b
		},
		isNewSafariMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("ipad") != -1 || c.indexOf("iphone") != -1
					|| c.indexOf("ipod") != -1;
			b = b && (c.indexOf("version/5") != -1);
			return b
		},
		isSafari4MobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("ipad") != -1 || c.indexOf("iphone") != -1
					|| c.indexOf("ipod") != -1;
			b = b && (c.indexOf("version/4") != -1);
			return b
		},
		isSafariMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("ipad") != -1 || c.indexOf("iphone") != -1
					|| c.indexOf("ipod") != -1;
			return b
		},
		isIPhoneSafariMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("iphone") != -1;
			return b
		},
		isIPadSafariMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("ipad") != -1;
			return b
		},
		isMobileBrowser : function() {
			var c = navigator.userAgent.toLowerCase();
			var b = c.indexOf("ipad") != -1 || c.indexOf("iphone") != -1
					|| c.indexOf("android") != -1;
			return b
		},
		getTouches : function(b) {
			if (b.originalEvent) {
				if (b.originalEvent.touches && b.originalEvent.touches.length) {
					return b.originalEvent.touches
				} else {
					if (b.originalEvent.changedTouches
							&& b.originalEvent.changedTouches.length) {
						return b.originalEvent.changedTouches
					}
				}
			}
			if (!b.touches) {
				b.touches = new Array();
				b.touches[0] = b.originalEvent
			}
			return b.touches
		},
		dispatchMouseEvent : function(b, f, d) {
			if (this.simulatetouches) {
				return
			}
			var c = document.createEvent("MouseEvent");
			c.initMouseEvent(b, true, true, f.view, 1, f.screenX, f.screenY,
					f.clientX, f.clientY, false, false, false, false, 0, null);
			if (d != null) {
				d.dispatchEvent(c)
			}
		},
		getRootNode : function(b) {
			while (b.nodeType !== 1) {
				b = b.parentNode
			}
			return b
		},
		setTouchScroll : function(b, c) {
			if (!this.enableScrolling) {
				this.enableScrolling = []
			}
			this.enableScrolling[c] = b
		},
		touchScroll : function(c, r, e, t) {
			if (c == null) {
				return
			}
			var s = this;
			var o = 0;
			var g = 0;
			var h = 0;
			var p = 0;
			var i = 0;
			var k = 0;
			var l = false;
			var f = false;
			var m = a(c);
			var q = [ "select", "input", "textarea" ];
			var b = 0;
			var d = 0;
			if (!this.enableScrolling) {
				this.enableScrolling = []
			}
			this.enableScrolling[t] = true;
			var t = t;
			m.bind("touchstart.touchScroll", function(u) {
				if (!s.enableScrolling[t]) {
					return true
				}
				if (a.inArray(u.target.tagName.toLowerCase(), q) !== -1) {
					return
				}
				var v = s.getTouches(u);
				var w = v[0];
				if (v.length == 1) {
					s.dispatchMouseEvent("mousedown", w, s
							.getRootNode(w.target))
				}
				l = true;
				f = false;
				g = w.pageY;
				i = w.pageX;
				if (s.simulatetouches) {
					g = w._pageY;
					i = w._pageX
				}
				o = 0;
				p = 0;
				return true
			});
			m.bind("touchmove.touchScroll", function(y) {
				if (!s.enableScrolling[t]) {
					return true
				}
				if (!l) {
					return true
				}
				var z = s.getTouches(y);
				if (z.length > 1) {
					return true
				}
				var w = z[0].pageY;
				var x = z[0].pageX;
				if (s.simulatetouches) {
					w = z[0]._pageY;
					x = z[0]._pageX
				}
				var u = w - g;
				var v = x - i;
				d = w;
				touchHorizontalEnd = x;
				h = u - o;
				k = v - p;
				f = true;
				o = u;
				p = v;
				e(-k * 3, -h * 3, v, u, y);
				y.preventDefault();
				y.stopPropagation();
				return false
			});
			if (this.simulatetouches) {
				a(window).bind("mouseup.touchScroll", function(u) {
					l = false
				});
				if (window.frameElement) {
					if (window.top != null) {
						var n = function(u) {
							l = false
						};
						if (window.top.document.addEventListener) {
							window.top.document.removeEventListener("mouseup",
									n, false);
							window.top.document.addEventListener("mouseup", n,
									false)
						} else {
							if (window.top.document.attachEvent) {
								window.top.document.attachEvent("onmouseup", n)
							}
						}
					}
				}
				a(document).bind("touchend", function(u) {
					if (!l) {
						return true
					}
					l = false;
					var w = s.getTouches(u)[0], v = s.getRootNode(w.target);
					s.dispatchMouseEvent("mouseup", w, v);
					s.dispatchMouseEvent("click", w, v)
				})
			}
			m.bind("touchend.touchScroll touchcancel.touchScroll", function(u) {
				if (!s.enableScrolling[t]) {
					return true
				}
				var w = s.getTouches(u)[0];
				if (!l) {
					return true
				}
				l = false;
				if (f) {
					s.dispatchMouseEvent("mouseup", w, v)
				} else {
					var w = s.getTouches(u)[0], v = s.getRootNode(w.target);
					s.dispatchMouseEvent("mouseup", w, v);
					s.dispatchMouseEvent("click", w, v)
				}
			})
		}
	});
	a.jqx.cookie = a.jqx.cookie || {};
	a
			.extend(
					a.jqx.cookie,
					{
						cookie : function(e, f, c) {
							if (arguments.length > 1
									&& String(f) !== "[object Object]") {
								c = jQuery.extend({}, c);
								if (f === null || f === undefined) {
									c.expires = -1
								}
								if (typeof c.expires === "number") {
									var h = c.expires, d = c.expires = new Date();
									d.setDate(d.getDate() + h)
								}
								f = String(f);
								return (document.cookie = [
										encodeURIComponent(e),
										"=",
										c.raw ? f : encodeURIComponent(f),
										c.expires ? "; expires="
												+ c.expires.toUTCString() : "",
										c.path ? "; path=" + c.path : "",
										c.domain ? "; domain=" + c.domain : "",
										c.secure ? "; secure" : "" ].join(""))
							}
							c = f || {};
							var b, g = c.raw ? function(i) {
								return i
							} : decodeURIComponent;
							return (b = new RegExp("(?:^|; )"
									+ encodeURIComponent(e) + "=([^;]*)")
									.exec(document.cookie)) ? g(b[1]) : null
						}
					});
	a.jqx.string = a.jqx.string || {};
	a.extend(a.jqx.string, {
		contains : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			return b.indexOf(c) != -1
		},
		containsIgnoreCase : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			return b.toUpperCase().indexOf(c.toUpperCase()) != -1
		},
		equals : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			b = this.normalize(b);
			if (c.length == b.length) {
				return b.slice(0, c.length) == c
			}
			return false
		},
		equalsIgnoreCase : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			b = this.normalize(b);
			if (c.length == b.length) {
				return b.toUpperCase().slice(0, c.length) == c.toUpperCase()
			}
			return false
		},
		startsWith : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			return b.slice(0, c.length) == c
		},
		startsWithIgnoreCase : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			return b.toUpperCase().slice(0, c.length) == c.toUpperCase()
		},
		normalize : function(b) {
			if (b.charCodeAt(b.length - 1) == 65279) {
				b = b.substring(0, b.length - 1)
			}
			return b
		},
		endsWith : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			b = this.normalize(b);
			return b.slice(-c.length) == c
		},
		endsWithIgnoreCase : function(b, c) {
			if (b == null || c == null) {
				return false
			}
			b = this.normalize(b);
			return b.toUpperCase().slice(-c.length) == c.toUpperCase()
		}
	});
	a.extend(jQuery.easing, {
		easeOutBack : function(f, g, e, k, i, h) {
			if (h == undefined) {
				h = 1.70158
			}
			return k * ((g = g / i - 1) * g * ((h + 1) * g + h) + 1) + e
		},
		easeInQuad : function(f, g, e, i, h) {
			return i * (g /= h) * g + e
		},
		easeInOutCirc : function(f, g, e, i, h) {
			if ((g /= h / 2) < 1) {
				return -i / 2 * (Math.sqrt(1 - g * g) - 1) + e
			}
			return i / 2 * (Math.sqrt(1 - (g -= 2) * g) + 1) + e
		},
		easeInOutSine : function(f, g, e, i, h) {
			return -i / 2 * (Math.cos(Math.PI * g / h) - 1) + e
		},
		easeInCubic : function(f, g, e, i, h) {
			return i * (g /= h) * g * g + e
		},
		easeOutCubic : function(f, g, e, i, h) {
			return i * ((g = g / h - 1) * g * g + 1) + e
		},
		easeInOutCubic : function(f, g, e, i, h) {
			if ((g /= h / 2) < 1) {
				return i / 2 * g * g * g + e
			}
			return i / 2 * ((g -= 2) * g * g + 2) + e
		},
		easeInSine : function(f, g, e, i, h) {
			return -i * Math.cos(g / h * (Math.PI / 2)) + i + e
		},
		easeOutSine : function(f, g, e, i, h) {
			return i * Math.sin(g / h * (Math.PI / 2)) + e
		},
		easeInOutSine : function(f, g, e, i, h) {
			return -i / 2 * (Math.cos(Math.PI * g / h) - 1) + e
		}
	})
})(jQuery);
(function(a) {
	a.fn.extend({
		ischildof : function(c) {
			var b = a(this).parents().get();
			for (j = 0; j < b.length; j++) {
				if (a(b[j]).is(c)) {
					return true
				}
			}
			return false
		}
	})
})(jQuery);