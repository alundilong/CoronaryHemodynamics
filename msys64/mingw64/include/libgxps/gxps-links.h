/* GXPSLinks
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

#ifndef __GXPS_LINKS_H__
#define __GXPS_LINKS_H__

#include <glib-object.h>
#include <cairo.h>
#include <libgxps/gxps-version.h>

G_BEGIN_DECLS

#define GXPS_TYPE_LINK        (gxps_link_get_type ())
#define GXPS_TYPE_LINK_TARGET (gxps_link_target_get_type ())

/**
 * GXPSLink:
 *
 * GXPSLink maps a location in a page to a #GXPSLinkTarget.
 */
typedef struct _GXPSLink       GXPSLink;

/**
 * GXPSLinkTarget:
 *
 * GXPSLinkTarget represents a hyperlink source.
 */
typedef struct _GXPSLinkTarget GXPSLinkTarget;

GXPS_AVAILABLE_IN_ALL
GType           gxps_link_get_type            (void) G_GNUC_CONST;
GXPS_AVAILABLE_IN_ALL
GXPSLink       *gxps_link_copy                (GXPSLink          *link);
GXPS_AVAILABLE_IN_ALL
void            gxps_link_free                (GXPSLink          *link);
GXPS_AVAILABLE_IN_ALL
GXPSLinkTarget *gxps_link_get_target          (GXPSLink          *link);
GXPS_AVAILABLE_IN_ALL
void            gxps_link_get_area            (GXPSLink          *link,
					       cairo_rectangle_t *area);

GXPS_AVAILABLE_IN_ALL
GType           gxps_link_target_get_type     (void) G_GNUC_CONST;
GXPS_AVAILABLE_IN_ALL
GXPSLinkTarget *gxps_link_target_copy         (GXPSLinkTarget    *target);
GXPS_AVAILABLE_IN_ALL
void            gxps_link_target_free         (GXPSLinkTarget    *target);
GXPS_AVAILABLE_IN_ALL
gboolean        gxps_link_target_is_internal  (GXPSLinkTarget    *target);
GXPS_AVAILABLE_IN_ALL
const gchar    *gxps_link_target_get_anchor   (GXPSLinkTarget    *target);
GXPS_AVAILABLE_IN_ALL
const gchar    *gxps_link_target_get_uri      (GXPSLinkTarget    *target);

G_END_DECLS

#endif /* __GXPS_LINKS_H__ */
