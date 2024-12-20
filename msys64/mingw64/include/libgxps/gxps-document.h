/* GXPSDocument
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

#ifndef __GXPS_DOCUMENT_H__
#define __GXPS_DOCUMENT_H__

#include <glib-object.h>
#include <gio/gio.h>

#include <libgxps/gxps-version.h>

#include "gxps-page.h"
#include "gxps-document-structure.h"

G_BEGIN_DECLS

#define GXPS_TYPE_DOCUMENT           (gxps_document_get_type ())
#define GXPS_DOCUMENT(obj)           (G_TYPE_CHECK_INSTANCE_CAST (obj, GXPS_TYPE_DOCUMENT, GXPSDocument))
#define GXPS_DOCUMENT_CLASS(cls)     (G_TYPE_CHECK_CLASS_CAST (cls, GXPS_TYPE_DOCUMENT, GXPSDocumentClass))
#define GXPS_IS_DOCUMENT(obj)        (G_TYPE_CHECK_INSTANCE_TYPE (obj, GXPS_TYPE_DOCUMENT))
#define GXPS_IS_DOCUMENT_CLASS(obj)  (G_TYPE_CHECK_CLASS_TYPE (obj, GXPS_TYPE_DOCUMENT))
#define GXPS_DOCUMENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), GXPS_TYPE_DOCUMENT, GXPSDocumentClass))

typedef struct _GXPSDocument        GXPSDocument;
typedef struct _GXPSDocumentClass   GXPSDocumentClass;
typedef struct _GXPSDocumentPrivate GXPSDocumentPrivate;

/**
 * GXPSDocument:
 *
 * The <structname>GXPSDocument</structname> struct contains
 * only private fields and should not be directly accessed.
 */
struct _GXPSDocument {
	GObject parent;

        /*< private >*/
	GXPSDocumentPrivate *priv;
};

struct _GXPSDocumentClass {
	GObjectClass parent_class;
};

GXPS_AVAILABLE_IN_ALL
GType                  gxps_document_get_type            (void) G_GNUC_CONST;

GXPS_AVAILABLE_IN_ALL
guint                  gxps_document_get_n_pages         (GXPSDocument *doc);
GXPS_AVAILABLE_IN_ALL
GXPSPage              *gxps_document_get_page            (GXPSDocument *doc,
							  guint         n_page,
							  GError      **error);
GXPS_AVAILABLE_IN_ALL
gboolean               gxps_document_get_page_size       (GXPSDocument *doc,
							  guint         n_page,
							  gdouble      *width,
							  gdouble      *height);
GXPS_AVAILABLE_IN_ALL
gint                   gxps_document_get_page_for_anchor (GXPSDocument *doc,
							  const gchar  *anchor);
GXPS_AVAILABLE_IN_ALL
GXPSDocumentStructure *gxps_document_get_structure       (GXPSDocument *doc);

G_END_DECLS

#endif /* __GXPS_DOCUMENT_H__ */
