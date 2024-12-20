/* GXPSDocumentStructure
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

#ifndef __GXPS_DOCUMENT_STRUCTURE_H__
#define __GXPS_DOCUMENT_STRUCTURE_H__

#include <glib-object.h>
#include "gxps-links.h"

G_BEGIN_DECLS

#define GXPS_TYPE_DOCUMENT_STRUCTURE           (gxps_document_structure_get_type ())
#define GXPS_DOCUMENT_STRUCTURE(obj)           (G_TYPE_CHECK_INSTANCE_CAST (obj, GXPS_TYPE_DOCUMENT_STRUCTURE, GXPSDocumentStructure))
#define GXPS_DOCUMENT_STRUCTURE_CLASS(cls)     (G_TYPE_CHECK_CLASS_CAST (cls, GXPS_TYPE_DOCUMENT_STRUCTURE, GXPSDocumentClassStructure))
#define GXPS_IS_DOCUMENT_STRUCTURE(obj)        (G_TYPE_CHECK_INSTANCE_TYPE (obj, GXPS_TYPE_DOCUMENT_STRUCTURE))
#define GXPS_IS_DOCUMENT_STRUCTURE_CLASS(obj)  (G_TYPE_CHECK_CLASS_TYPE (obj, GXPS_TYPE_DOCUMENT_STRUCTURE))
#define GXPS_DOCUMENT_STRUCTURE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), GXPS_TYPE_DOCUMENT_STRUCTURE, GXPSDocumentStructureClass))

typedef struct _GXPSDocumentStructure        GXPSDocumentStructure;
typedef struct _GXPSDocumentStructureClass   GXPSDocumentStructureClass;
typedef struct _GXPSDocumentStructurePrivate GXPSDocumentStructurePrivate;

/**
 * GXPSDocumentStructure:
 *
 * The <structname>GXPSDocumentStructure</structname> struct contains
 * only private fields and should not be directly accessed.
 */
struct _GXPSDocumentStructure {
	GObject parent;

        /*< private >*/
	GXPSDocumentStructurePrivate *priv;
};

struct _GXPSDocumentStructureClass {
	GObjectClass parent_class;
};

/**
 * GXPSOutlineIter:
 *
 * GXPSOutlineIter represents an iterator that can be
 * used to iterate over the items of an outline
 * contained in a #GXPSDocumentStructure
 */
typedef struct _GXPSOutlineIter GXPSOutlineIter;
struct _GXPSOutlineIter {
	/*< private >*/
	gpointer dummy1;
	gpointer dummy2;
};

GXPS_AVAILABLE_IN_ALL
GType           gxps_document_structure_get_type          (void) G_GNUC_CONST;

GXPS_AVAILABLE_IN_ALL
gboolean        gxps_document_structure_has_outline       (GXPSDocumentStructure *structure);
GXPS_AVAILABLE_IN_ALL
gboolean        gxps_document_structure_outline_iter_init (GXPSOutlineIter       *iter,
							   GXPSDocumentStructure *structure);
GXPS_AVAILABLE_IN_ALL
gboolean        gxps_outline_iter_next                    (GXPSOutlineIter       *iter);
GXPS_AVAILABLE_IN_ALL
gboolean        gxps_outline_iter_children                (GXPSOutlineIter       *iter,
							   GXPSOutlineIter       *parent);
GXPS_AVAILABLE_IN_ALL
const gchar    *gxps_outline_iter_get_description         (GXPSOutlineIter       *iter);
GXPS_AVAILABLE_IN_ALL
GXPSLinkTarget *gxps_outline_iter_get_target              (GXPSOutlineIter       *iter);

G_END_DECLS

#endif /* __GXPS_DOCUMENT_STRUCTURE_H__ */
