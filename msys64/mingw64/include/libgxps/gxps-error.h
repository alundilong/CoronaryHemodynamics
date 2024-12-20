/* GXPSError
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

#ifndef __GXPS_ERROR_H__
#define __GXPS_ERROR_H__

#include <glib.h>
#include <libgxps/gxps-version.h>

G_BEGIN_DECLS

/**
 * GXPS_ERROR:
 *
 * Error domain for GXPS. Errors in this domain will be from
 * the #GXPSError enumeration.
 * See #GError for more information on error domains.
 */
#define GXPS_ERROR (gxps_error_quark ())

/**
 * GXPSError:
 * @GXPS_ERROR_SOURCE_NOT_FOUND: Internal source file not found in XPS file
 * @GXPS_ERROR_FONT: Error loading fonts
 * @GXPS_ERROR_IMAGE: Error loading images
 *
 * Error codes returned by GXPS functions.
 */
typedef enum {
	GXPS_ERROR_SOURCE_NOT_FOUND,
	GXPS_ERROR_FONT,
	GXPS_ERROR_IMAGE
} GXPSError;

GXPS_AVAILABLE_IN_ALL
GQuark gxps_error_quark (void) G_GNUC_CONST;

G_END_DECLS

#endif /* __GXPS_ERROR_H__ */
