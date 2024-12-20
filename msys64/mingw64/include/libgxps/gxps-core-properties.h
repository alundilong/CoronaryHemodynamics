/* GXPSCoreProperties
 *
 * Copyright (C) 2013  Carlos Garcia Campos <carlosgc@gnome.org>
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

#ifndef __GXPS_CORE_PROPERTIES_H__
#define __GXPS_CORE_PROPERTIES_H__

#include <glib-object.h>
#include <libgxps/gxps-version.h>

G_BEGIN_DECLS

#define GXPS_TYPE_CORE_PROPERTIES           (gxps_core_properties_get_type ())
#define GXPS_CORE_PROPERTIES(obj)           (G_TYPE_CHECK_INSTANCE_CAST (obj, GXPS_TYPE_CORE_PROPERTIES, GXPSCoreProperties))
#define GXPS_IS_CORE_PROPERTIES(obj)        (G_TYPE_CHECK_INSTANCE_TYPE (obj, GXPS_TYPE_CORE_PROPERTIES))
#define GXPS_CORE_PROPERTIES_CLASS(cls)     (G_TYPE_CHECK_CLASS_CAST (cls, GXPS_TYPE_CORE_PROPERTIES, GXPSCorePropertiesClass))
#define GXPS_IS_CORE_PROPERTIES_CLASS(obj)  (G_TYPE_CHECK_CLASS_TYPE (obj, GXPS_TYPE_CORE_PROPERTIES))
#define GXPS_CORE_PROPERTIES_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), GXPS_TYPE_CORE_PROPERTIES, GXPSCorePropertiesClass))

typedef struct _GXPSCoreProperties        GXPSCoreProperties;
typedef struct _GXPSCorePropertiesClass   GXPSCorePropertiesClass;
typedef struct _GXPSCorePropertiesPrivate GXPSCorePropertiesPrivate;

/**
 * GXPSCoreProperties:
 *
 * The <structname>GXPSCoreProperties</structname> struct contains
 * only private fields and should not be directly accessed.
 */
struct _GXPSCoreProperties {
        GObject parent;

        /*< private >*/
        GXPSCorePropertiesPrivate *priv;
};

struct _GXPSCorePropertiesClass {
        GObjectClass parent_class;
};

GXPS_AVAILABLE_IN_ALL
GType        gxps_core_properties_get_type             (void) G_GNUC_CONST;

GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_title            (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_creator          (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_description      (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_subject          (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_keywords         (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_version          (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_revision         (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_identifier       (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_language         (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_category         (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_content_status   (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_content_type     (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
time_t       gxps_core_properties_get_created          (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
const gchar *gxps_core_properties_get_last_modified_by (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
time_t       gxps_core_properties_get_modified         (GXPSCoreProperties *core_props);
GXPS_AVAILABLE_IN_ALL
time_t       gxps_core_properties_get_last_printed     (GXPSCoreProperties *core_props);

G_END_DECLS

#endif /* __GXPS_CORE_PROPERTIES_H__ */
