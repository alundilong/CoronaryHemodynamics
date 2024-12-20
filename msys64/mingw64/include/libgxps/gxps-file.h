/* GXPSFile
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

#ifndef __GXPS_FILE_H__
#define __GXPS_FILE_H__

#include <glib-object.h>
#include <gio/gio.h>

#include "gxps-document.h"
#include "gxps-links.h"
#include "gxps-core-properties.h"

G_BEGIN_DECLS

#define GXPS_TYPE_FILE           (gxps_file_get_type ())
#define GXPS_FILE(obj)           (G_TYPE_CHECK_INSTANCE_CAST (obj, GXPS_TYPE_FILE, GXPSFile))
#define GXPS_FILE_CLASS(cls)     (G_TYPE_CHECK_CLASS_CAST (cls, GXPS_TYPE_FILE, GXPSFileClass))
#define GXPS_IS_FILE(obj)        (G_TYPE_CHECK_INSTANCE_TYPE (obj, GXPS_TYPE_FILE))
#define GXPS_IS_FILE_CLASS(obj)  (G_TYPE_CHECK_CLASS_TYPE (obj, GXPS_TYPE_FILE))
#define GXPS_FILE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), GXPS_TYPE_FILE, GXPSFileClass))

/**
 * GXPS_FILE_ERROR:
 *
 * Error domain for #GXPSFile. Errors in this domain will be from
 * the #GXPSFileError enumeration.
 * See #GError for more information on error domains.
 */
#define GXPS_FILE_ERROR          (gxps_file_error_quark ())

/**
 * GXPSFileError:
 * @GXPS_FILE_ERROR_INVALID: The XPS is invalid.
 *
 * Error codes returned by #GXPSFile functions.
 */
typedef enum {
	GXPS_FILE_ERROR_INVALID
} GXPSFileError;

typedef struct _GXPSFile        GXPSFile;
typedef struct _GXPSFileClass   GXPSFileClass;
typedef struct _GXPSFilePrivate GXPSFilePrivate;

/**
 * GXPSFile:
 *
 * The <structname>GXPSFile</structname> struct contains
 * only private fields and should not be directly accessed.
 */
struct _GXPSFile {
	GObject parent;

        /*< private >*/
	GXPSFilePrivate *priv;
};

struct _GXPSFileClass {
	GObjectClass parent_class;
};

GXPS_AVAILABLE_IN_ALL
GType               gxps_file_get_type                     (void) G_GNUC_CONST;
GXPS_AVAILABLE_IN_ALL
GQuark              gxps_file_error_quark                  (void) G_GNUC_CONST;
GXPS_AVAILABLE_IN_ALL
GXPSFile           *gxps_file_new                          (GFile          *filename,
                                                            GError        **error);

GXPS_AVAILABLE_IN_ALL
guint               gxps_file_get_n_documents              (GXPSFile       *xps);
GXPS_AVAILABLE_IN_ALL
GXPSDocument       *gxps_file_get_document                 (GXPSFile       *xps,
                                                            guint           n_doc,
                                                            GError        **error);
GXPS_AVAILABLE_IN_ALL
gint                gxps_file_get_document_for_link_target (GXPSFile       *xps,
                                                            GXPSLinkTarget *target);
GXPS_AVAILABLE_IN_ALL
GXPSCoreProperties *gxps_file_get_core_properties          (GXPSFile       *xps,
                                                            GError        **error);

G_END_DECLS

#endif /* __GXPS_FILE_H__ */
