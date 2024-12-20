


#ifndef GTKSOURCEVIEW_ENUMTYPES_H
#define GTKSOURCEVIEW_ENUMTYPES_H

#if !defined (GTK_SOURCE_H_INSIDE) && !defined (GTK_SOURCE_COMPILATION)
#  if defined (__GNUC__)
#    warning "Only <gtksourceview/gtksource.h> can be included directly."
#  elif defined (G_OS_WIN32)
#    pragma message("Only <gtksourceview/gtksource.h> can be included directly.")
#  endif
#endif
#include <gtksourceview/gtksourcebuffer.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_BRACKET_MATCH_TYPE gtk_source_bracket_match_type_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_bracket_match_type_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_CHANGE_CASE_TYPE gtk_source_change_case_type_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_change_case_type_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_SORT_FLAGS gtk_source_sort_flags_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_sort_flags_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcecompletion.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_COMPLETION_ERROR gtk_source_completion_error_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_completion_error_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcecompletioncontext.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_COMPLETION_ACTIVATION gtk_source_completion_activation_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_completion_activation_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcefile.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_NEWLINE_TYPE gtk_source_newline_type_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_newline_type_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_COMPRESSION_TYPE gtk_source_compression_type_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_compression_type_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcefileloader.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_FILE_LOADER_ERROR gtk_source_file_loader_error_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_file_loader_error_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcefilesaver.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_FILE_SAVER_ERROR gtk_source_file_saver_error_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_file_saver_error_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_FILE_SAVER_FLAGS gtk_source_file_saver_flags_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_file_saver_flags_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcegutterrenderer.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_GUTTER_RENDERER_STATE gtk_source_gutter_renderer_state_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_gutter_renderer_state_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_GUTTER_RENDERER_ALIGNMENT_MODE gtk_source_gutter_renderer_alignment_mode_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_gutter_renderer_alignment_mode_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourcespacedrawer.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_SPACE_TYPE_FLAGS gtk_source_space_type_flags_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_space_type_flags_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_SPACE_LOCATION_FLAGS gtk_source_space_location_flags_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_space_location_flags_get_type (void);
G_END_DECLS
#include <gtksourceview/gtksourceview.h>
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_VIEW_GUTTER_POSITION gtk_source_view_gutter_position_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_view_gutter_position_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_SMART_HOME_END_TYPE gtk_source_smart_home_end_type_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_smart_home_end_type_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_DRAW_SPACES_FLAGS gtk_source_draw_spaces_flags_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_draw_spaces_flags_get_type (void);
G_END_DECLS
G_BEGIN_DECLS
#define GTK_SOURCE_TYPE_BACKGROUND_PATTERN_TYPE gtk_source_background_pattern_type_get_type()
GTK_SOURCE_ENUM_EXTERN
GType gtk_source_background_pattern_type_get_type (void);
G_END_DECLS
#endif /* GTKSOURCEVIEW_ENUMTYPES_H */



