/* GXPSPage
 *
 * Copyright (C) 2010  Carlos Garcia Campos <carlosgc@gnome.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#if !defined (__GXPS_H_INSIDE__) && !defined (GXPS_COMPILATION)
#error "Only <libgxps/gxps.h> can be included directly."
#endif

#ifndef __GXPS_PAGE_H__
#define __GXPS_PAGE_H__

#include <glib-object.h>
#include <gio/gio.h>
#include <cairo.h>
#include <libgxps/gxps-version.h>

G_BEGIN_DECLS

#define GXPS_TYPE_PAGE           (gxps_page_get_type ())
#define GXPS_PAGE(obj)           (G_TYPE_CHECK_INSTANCE_CAST (obj, GXPS_TYPE_PAGE, GXPSPage))
#define GXPS_PAGE_CLASS(cls)     (G_TYPE_CHECK_CLASS_CAST (cls, GXPS_TYPE_PAGE, GXPSPageClass))
#define GXPS_IS_PAGE(obj)        (G_TYPE_CHECK_INSTANCE_TYPE (obj, GXPS_TYPE_PAGE))
#define GXPS_IS_PAGE_CLASS(obj)  (G_TYPE_CHECK_CLASS_TYPE (obj, GXPS_TYPE_PAGE))
#define GXPS_PAGE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), GXPS_TYPE_PAGE, GXPSPageClass))

/**
 * GXPS_PAGE_ERROR:
 *
 * Error domain for #GXPSPage. Errors in this domain will be from
 * #GXPSPageError enumeration.
 * See #GError for more information on error domains.
 */
#define GXPS_PAGE_ERROR          (gxps_page_error_quark ())

/**
 * GXPSPageError:
 * @GXPS_PAGE_ERROR_INVALID: The page is invalid.
 * @GXPS_PAGE_ERROR_RENDER: Error rendering the page.
 * @GXPS_PAGE_ERROR_INVALID_ANCHOR: Anchor is invalid for the page.
 *
 * Error codes returned by #GXPSPage functions
 */
typedef enum {
	GXPS_PAGE_ERROR_INVALID,
	GXPS_PAGE_ERROR_RENDER,
	GXPS_PAGE_ERROR_INVALID_ANCHOR
} GXPSPageError;

typedef struct _GXPSPage        GXPSPage;
typedef struct _GXPSPageClass   GXPSPageClass;
typedef struct _GXPSPagePrivate GXPSPagePrivate;

/**
 * GXPSPage:
 *
 * The <structname>GXPSPage</structname> struct contains
 * only private fields and should not be directly accessed.
 */
struct _GXPSPage {
	GObject parent;

        /*< private >*/
	GXPSPagePrivate *priv;
};

struct _GXPSPageClass {
	GObjectClass parent_class;
};

GXPS_AVAILABLE_IN_ALL
GType    gxps_page_get_type               (void) G_GNUC_CONST;
GXPS_AVAILABLE_IN_ALL
GQuark   gxps_page_error_quark            (void) G_GNUC_CONST;

GXPS_AVAILABLE_IN_ALL
void     gxps_page_get_size               (GXPSPage          *page,
					   gdouble           *width,
					   gdouble           *height);
GXPS_AVAILABLE_IN_ALL
gboolean gxps_page_render                 (GXPSPage          *page,
					   cairo_t           *cr,
					   GError           **error);
GXPS_AVAILABLE_IN_ALL
GList   *gxps_page_get_links              (GXPSPage          *page,
					   GError           **error);
GXPS_AVAILABLE_IN_ALL
gboolean gxps_page_get_anchor_destination (GXPSPage          *page,
					   const gchar       *anchor,
					   cairo_rectangle_t *area,
					   GError           **error);


G_END_DECLS

#endif /* __GXPS_PAGE_H__ */
