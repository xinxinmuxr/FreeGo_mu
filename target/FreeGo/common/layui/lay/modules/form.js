/** layui-v1.0.7 MIT License By http://www.layui.com */ ;
layui.define("layer", function(e) {
	"use strict";
	var i = layui.jquery,
		a = layui.layer,
		t = layui.hint(),
		n = layui.device(),
		l = "form",
		s = ".layui-form",
		c = "layui-this",
		r = "layui-disabled",
		u = function() {
			this.config = {
				verify: {
					required: [/[\S]+/, "必填项不能为空"],
					phone: [/^1\d{10}$/, "请输入正确的手机号"],
					email: [/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/, "邮箱格式不正确"],
					url: [/(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/, "链接格式不正确"],
					number: [/^\d+$/, "只能填写数字"],
					date: [/^(\d{4})[-\/](\d{1}|0\d{1}|1[0-2])([-\/](\d{1}|0\d{1}|[1-2][0-9]|3[0-1]))*$/, "日期格式不正确"],
					identity: [/(^\d{15}$)|(^\d{17}(x|X|\d)$)/, "请输入正确的身份证号"]
				}
			}
		};
	u.prototype.set = function(e) {
		var a = this;
		return i.extend(!0, a.config, e), a
	}, u.prototype.verify = function(e) {
		var a = this;
		return i.extend(!0, a.config.verify, e), a
	}, u.prototype.on = function(e, i) {
		return layui.onevent(l, e, i)
	}, u.prototype.render = function(e) {
		var a = this,
			n = {
				select: function() {
					var e = "请选择",
						a = "layui-form-select",
						t = "layui-select-title",
						n = i(s).find("select"),
						u = function(e, n) {
							i(e.target).parent().hasClass(t) && !n || i("." + a).removeClass(a + "ed")
						},
						o = function(e, n) {
							var s = i(this),
								o = e.find("." + t);
							n || (o.on("click", function(i) {
								e.hasClass(a + "ed") ? e.removeClass(a + "ed") : (u(i, !0), e.addClass(a + "ed"))
							}), e.find("dl>dd").on("click", function() {
								var e = i(this),
									a = e.attr("lay-value"),
									t = s.attr("lay-filter");
								return !e.hasClass(r) && (s.val(a).removeClass("layui-form-danger"), o.find("input").val(e.text()), e.addClass(c).siblings().removeClass(c), void layui.event(l, "select(" + t + ")", {
									elem: s[0],
									value: a
								}))
							}), e.find("dl>dt").on("click", function(e) {
								return !1
							}), i(document).off("click", u).on("click", u))
						};
					n.each(function(n, l) {
						var s = i(this),
							u = s.next("." + a),
							d = this.disabled,
							f = l.value,
							y = i(l.options[l.selectedIndex]),
							v = i(['<div class="layui-unselect ' + a + (d ? " layui-select-disabled" : "") + '">', '<div class="' + t + '"><input type="text" placeholder="' + (l.options[0].innerHTML ? l.options[0].innerHTML : e) + '" value="' + (f ? y.html() : "") + '" readonly class="layui-input layui-unselect' + (d ? " " + r : "") + '">', '<i class="layui-edge"></i></div>', '<dl class="layui-anim layui-anim-upbit' + (s.find("optgroup")[0] ? " layui-select-group" : "") + '">' + function(e) {
								var i = [];
								return layui.each(e, function(e, a) {
									(0 !== e || a.value) && ("optgroup" === a.tagName.toLowerCase() ? i.push("<dt>" + a.label + "</dt>") : i.push('<dd lay-value="' + a.value + '" class="' + (f === a.value ? c : "") + (a.disabled ? " " + r : "") + '">' + a.innerHTML + "</dd>"))
								}), i.join("")
							}(s.find("*")) + "</dl>", "</div>"].join(""));
						u[0] && u.remove(), s.after(v), o.call(this, v, d)
					})
				},
				checkbox: function() {
					var e = {
							checkbox: ["layui-form-checkbox", "layui-form-checked", "checkbox"],
							_switch: ["layui-form-switch", "layui-form-onswitch", "switch"]
						},
						a = i(s).find("input[type=checkbox]"),
						t = function(e, a) {
							var t = i(this);
							e.on("click", function() {
								var i = t.attr("lay-filter");
								t[0].disabled || (t[0].checked ? (t[0].checked = !1, e.removeClass(a[1])) : (t[0].checked = !0, e.addClass(a[1])), layui.event(l, a[2] + "(" + i + ")", {
									elem: t[0],
									value: t[0].value
								}))
							})
						};
					a.each(function(a, n) {
						var l = i(this),
							s = l.attr("lay-skin"),
							c = this.disabled;
						"switch" === s && (s = "_" + s);
						var u = e[s] || e.checkbox,
							o = l.next("." + u[0]),
							d = i(['<div class="layui-unselect ' + u[0] + (n.checked ? " " + u[1] : "") + (c ? " layui-checkbox-disbaled " + r : "") + '">', {
								_switch: "<i></i>"
							}[s] || "<span>" + (n.title || "勾选") + '</span><i class="layui-icon">&#xe618;</i>', "</div>"].join(""));
						o[0] && o.remove(), l.after(d), t.call(this, d, u)
					})
				},
				radio: function() {
					var e = "layui-form-radio",
						a = ["&#xe643;", "&#xe63f;"],
						t = i(s).find("input[type=radio]"),
						n = function(t) {
							var n = i(this),
								c = "layui-anim-scaleSpring";
							t.on("click", function() {
								var r = n[0].name,
									u = n.parents(s),
									o = n.attr("lay-filter"),
									d = u.find("input[name=" + r.replace(/(\.|#|\[|\])/g, "\\$1") + "]");
								n[0].disabled || (layui.each(d, function() {
									var t = i(this).next("." + e);
									this.checked = !1, t.removeClass(e + "ed"), t.find(".layui-icon").removeClass(c).html(a[1])
								}), n[0].checked = !0, t.addClass(e + "ed"), t.find(".layui-icon").addClass(c).html(a[0]), layui.event(l, "radio(" + o + ")", {
									elem: n[0],
									value: n[0].value
								}))
							})
						};
					t.each(function(t, l) {
						var s = i(this),
							c = s.next("." + e),
							u = this.disabled,
							o = i(['<div id="input-sex'+t+'" class="layui-unselect ' + e + (l.checked ? " " + e + "ed" : "") + (u ? " layui-radio-disbaled " + r : "") + '">', '<i class="layui-anim layui-icon">' + a[l.checked ? 0 : 1] + "</i>", "<span>" + (l.title || "未命名") + "</span>", "</div>"].join(""));
						c[0] && c.remove(), s.after(o), n.call(this, o)
					})
				}
			};
		return e ? n[e] ? n[e]() : t.error("不支持的" + e + "表单渲染") : layui.each(n, function(e, i) {
			i()
		}), a
	};
	var o = function() {
			var e = i(this),
				t = d.config.verify,
				c = null,
				r = "layui-form-danger",
				u = {},
				o = e.parents(s),
				f = o.find("*[lay-verify]"),
				y = e.parents("form")[0],
				v = o.find("input,select,textarea"),
				h = e.attr("lay-filter");
			return layui.each(f, function(e, l) {
				var s = i(this),
					u = s.attr("lay-verify"),
					o = "",
					d = s.val(),
					f = "function" == typeof t[u];
				if(s.removeClass(r), t[u] && (f ? o = t[u](d, l) : !t[u][0].test(d))) return a.msg(o || t[u][1], {
					icon: 5,
					shift: 6
				}), n.android || n.ios || l.focus(), s.addClass(r), c = !0
			}), !c && (layui.each(v, function(e, i) {
				i.name && (/^checkbox|radio$/.test(i.type) && !i.checked || (u[i.name] = i.value))
			}), layui.event.call(this, l, "submit(" + h + ")", {
				elem: this,
				form: y,
				field: u
			}))
		},
		d = new u,
		f = i(document);
	d.render(), f.on("reset", s, function() {
		setTimeout(function() {
			d.render()
		}, 50)
	}), f.on("submit", s, o).on("click", "*[lay-submit]", o), e(l, function(e) {
		return d.set(e)
	})
});