/* This file is part of Libspectre.
 * 
 * Copyright (C) 2007 Albert Astals Cid <aacid@kde.org>
 * Copyright (C) 2007 Carlos Garcia Campos <carlosgc@gnome.org>
 *
 * Libspectre is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2; or (at your option)
 * any later version.
 *
 * Libspectre is distributed in the hope that it will be useful;
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not; write to the Free Software
 * Foundation; Inc.; 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#ifndef SPECTRE_RENDER_CONTEXT_H
#define SPECTRE_RENDER_CONTEXT_H

#include <libspectre/spectre-macros.h>

SPECTRE_BEGIN_DECLS

/*! This object defines how a page will be rendered */
typedef struct SpectreRenderContext SpectreRenderContext;

/*! Creates a rendering context */
SpectreRenderContext *spectre_render_context_new                    (void);

/*! Frees a rendering context
    @param rc The rendering context to free
*/
void                  spectre_render_context_free                   (SpectreRenderContext *rc);

/*! Sets the scale. The default is 1
    @param rc The rendering context to modify
    @param x_scale The scale factor for the X dimension to use when rendering. 2 is twice as big
    @param y_scale The scale factor for the Y dimension to use when rendering. 2 is twice as big
*/
void                  spectre_render_context_set_scale              (SpectreRenderContext *rc,
								     double                x_scale,
								     double                y_scale);

/*! Gets the scale
    @param rc The rendering context to query
    @param x_scale The scale factor for the X dimension will be stored here, or NULL
    @param y_scale The scale factor for the Y dimension will be stored here, or NULL
*/
void                  spectre_render_context_get_scale              (SpectreRenderContext *rc,
								     double               *x_scale,
								     double               *y_scale);

/*! Sets the rotation. The default is 0
    @param rc The rendering context to modify
    @param rotation The rotation to use when rendering. Usually 0, 90, 180 or 270
*/
void                  spectre_render_context_set_rotation           (SpectreRenderContext *rc,
								     unsigned int          rotation);

/*! Gets the rotation
    @param rc The rendering context to query
*/
unsigned int          spectre_render_context_get_rotation           (SpectreRenderContext *rc);

/*! Sets the resolution. The default is 72 for both directions
    @param rc The rendering context to modify
    @param x_dpi the horizontal resolution to set
    @param y_dpi the vertical resolution to set
*/
void                  spectre_render_context_set_resolution         (SpectreRenderContext *rc,
								     double                x_dpi,
								     double                y_dpi);

/*! Gets the resolution
    @param rc The rendering context to query
    @param x_dpi the horizontal resolution will be stored here, or NULL
    @param y_dpi the vertical resolution will be stored here, or NULL
*/
void                  spectre_render_context_get_resolution         (SpectreRenderContext *rc,
								     double               *x_dpi,
								     double               *y_dpi);

/*! Sets the page size in pixels. Rotation shouldn't be considered,
    the page size will be automatically adjusted when rendering according
    to the rotation selected. Note that the page size doesn't affect the
    scale. If no page size is given the page bounding box will be used,
    or the rectangle given when using spectre_page_render_slice
    @param rc The rendering context to modify
    @param width the width of the page
    @param height the height of the page
*/
void                  spectre_render_context_set_page_size          (SpectreRenderContext *rc,
								     int                   width,
								     int                   height);

/*! Gets the page size in pixels
    @param rc The rendering context to query
    @param width the width of the page will be stored here, or NULL
    @param height the height of the page will be stored here, or NULL
*/
void                  spectre_render_context_get_page_size          (SpectreRenderContext *rc,
								     int                  *width,
								     int                  *height);

/*! Sets whether to use the platform fonts when rendering or not. The default is TRUE
    @param rc The rendering context to modify
    @param use_platform_fonts should platform fonts be used when rendering?
*/
void                  spectre_render_context_set_use_platform_fonts (SpectreRenderContext *rc,
								     int                   use_platform_fonts);

/*! Gets whether to use the platform fonts when rendering or not
    @param rc The rendering context to query
*/
int                   spectre_render_context_get_use_platform_fonts (SpectreRenderContext *rc);

/*! Sets the antialias options for graphics and texts. The default is 4 for graphics and 2 for text
    @param rc The rendering context to modify
    @param graphics_bits The number of antialias bits to use for graphics.
                         Typically 4 for antialias and 1 for no antialias
    @param text_bits The number of antialias bits to use for text.
                     Typically 2 for antialias and 1 for no antialias
*/
void                  spectre_render_context_set_antialias_bits     (SpectreRenderContext *rc,
								     int                   graphics_bits,
								     int                   text_bits);

/*! Gets the antialias options for graphics and texts
    @param rc The rendering context to query
    @param graphics_bits The number of antialias bits to use for graphics will be stored here
    @param text_bits The number of antialias bits to use for text will be stored here
*/
void                  spectre_render_context_get_antialias_bits     (SpectreRenderContext *rc,
								     int                  *graphics_bits,
								     int                  *text_bits);

SPECTRE_END_DECLS

#endif /* SPECTRE_PAGE_H */
