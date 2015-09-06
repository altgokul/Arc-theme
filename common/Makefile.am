themedir        = $(datadir)/themes/Arc
ithemedir       = $(DESTDIR)$(themedir)

install-data-local:

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme $(ithemedir)
endif # ENABLE_LIGHT

if ENABLE_GTK2

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -r --no-preserve=mode,ownership \
		assets \
		menubar-toolbar \
		*.rc \
		gtkrc \
		$(ithemedir)/gtk-2.0
endif # ENABLE_LIGHT

endif # ENABLE_GTK2


if ENABLE_GTK3

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		assets \
		gtk.css \
		gtk-contained.css \
		$(ithemedir)/gtk-3.0
endif # ENABLE_LIGHT

if !ENABLE_TRANSPARENCY

if ENABLE_LIGHT
	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid.css \
		$(ithemedir)/gtk-3.0/gtk-contained.css

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -r --no-preserve=mode,ownership \
		gtk-contained-solid-dark.css \
		$(ithemedir)/gtk-3.0/gtk-contained-dark.css
endif # ENABLE_LIGHT

endif #!ENABLE_TRANSPARENCY

endif # ENABLE_GTK3

uninstall-local:
	rm -rf $(ithemedir)

EXTRA_DIST = $(srcdir)/gtk-2.0 \
	     $(srcdir)/gtk-3.0 \
	     $(srcdir)/index.theme
