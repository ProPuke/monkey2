Namespace allegro5

#Import "<libc>"

Using libc..

'// Ugly hack
'#define ALLEGRO_STATICLINK // force use static lib : in 'allegro5.h' file

'// Include dirs
#Import "native/include/*.h"

'// Main include file
#Import "<allegro5/allegro5.h>" 

'// Libs dirs
#Import "native/lib/*.a"

'//TODO: Need more optimisation for reduce size, linking with only libraries uses
#If __CONFIG__="release"
	#Import "<liballegro_monolith-debug-static.a>"
#ElseIf __CONFIG__="debug"
	#Import "<liballegro_monolith-static.a>"
#EndIf

'// Dependencies
#Import "<libdumb.a>"
#Import "<libfreetype.a>"
#Import "<libFLAC.a>"
#Import "<libogg.a>"
#Import "<libvorbis.a>"
#Import "<libvorbisfile.a>"
#Import "<libpng16.a>"
#Import "<libjpeg.a>"
#Import "<libopus.a>"
#Import "<libopusfile.a>"
#Import "<libphysfs.a>"
#Import "<libtheoradec.a>"
#Import "<libzlib.a>"

'// Sytem
#Import "<libgdiplus.a>"
#Import "<libuuid.a>"
#Import "<libkernel32.a>"
#Import "<libwinmm.a>"
#Import "<libpsapi.a>"
#Import "<libopengl32.a>"
#Import "<libglu32.a>"
#Import "<libuser32.a>"
#Import "<libcomdlg32.a>"
#Import "<libgdi32.a>"
#Import "<libshell32.a>"
#Import "<libole32.a>"
#Import "<libadvapi32.a>"
#Import "<libws2_32.a>"
#Import "<libshlwapi.a>"

Extern

Const ALLEGRO_VERSION_INT:Int

'***** File: native/include\allegro5/base.h *****

Function al_get_allegro_version:Int(  )
Function al_run_main:Int( argc:Int, argv:libc.char_t Ptr Ptr, Int( Int, libc.char_t Ptr Ptr ) )

'***** File: native/include\allegro5/altime.h *****

Struct ALLEGRO_TIMEOUT
	Field __pad1__:Int
	Field __pad2__:Int
End
Function al_get_time:Double(  )
Function al_rest:Void( seconds:Double )
Function al_init_timeout:Void( timeout:ALLEGRO_TIMEOUT Ptr, seconds:Double )

'***** File: native/include\allegro5/color.h *****

Struct ALLEGRO_COLOR
	Field r:Float
	Field g:Float
	Field b:Float
	Field a:Float
End
Enum ALLEGRO_PIXEL_FORMAT
End
Const ALLEGRO_PIXEL_FORMAT_ANY:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_NO_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_WITH_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_15_NO_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_16_NO_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_16_WITH_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_24_NO_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_32_NO_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ANY_32_WITH_ALPHA:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ARGB_8888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGBA_8888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ARGB_4444:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGB_888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGB_565:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGB_555:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGBA_5551:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ARGB_1555:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ABGR_8888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_XBGR_8888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_BGR_888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_BGR_565:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_BGR_555:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGBX_8888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_XRGB_8888:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ABGR_F32:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_ABGR_8888_LE:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_RGBA_4444:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_SINGLE_CHANNEL_8:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_COMPRESSED_RGBA_DXT1:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_COMPRESSED_RGBA_DXT3:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_PIXEL_FORMAT_COMPRESSED_RGBA_DXT5:ALLEGRO_PIXEL_FORMAT
Const ALLEGRO_NUM_PIXEL_FORMATS:ALLEGRO_PIXEL_FORMAT
Function al_map_rgb:ALLEGRO_COLOR( r:UByte, g:UByte, b:UByte )
Function al_map_rgba:ALLEGRO_COLOR( r:UByte, g:UByte, b:UByte, a:UByte )
Function al_map_rgb_f:ALLEGRO_COLOR( r:Float, g:Float, b:Float )
Function al_map_rgba_f:ALLEGRO_COLOR( r:Float, g:Float, b:Float, a:Float )
Function al_premul_rgba:ALLEGRO_COLOR( r:UByte, g:UByte, b:UByte, a:UByte )
Function al_premul_rgba_f:ALLEGRO_COLOR( r:Float, g:Float, b:Float, a:Float )
Function al_unmap_rgb:Void( color:ALLEGRO_COLOR, r:UByte Ptr, g:UByte Ptr, b:UByte Ptr )
Function al_unmap_rgba:Void( color:ALLEGRO_COLOR, r:UByte Ptr, g:UByte Ptr, b:UByte Ptr, a:UByte Ptr )
Function al_unmap_rgb_f:Void( color:ALLEGRO_COLOR, r:Float Ptr, g:Float Ptr, b:Float Ptr )
Function al_unmap_rgba_f:Void( color:ALLEGRO_COLOR, r:Float Ptr, g:Float Ptr, b:Float Ptr, a:Float Ptr )
Function al_get_pixel_size:Int( format:Int )
Function al_get_pixel_format_bits:Int( format:Int )
Function al_get_pixel_block_size:Int( format:Int )
Function al_get_pixel_block_width:Int( format:Int )
Function al_get_pixel_block_height:Int( format:Int )
Const ALLEGRO_MEMORY_BITMAP:Int
Const _ALLEGRO_KEEP_BITMAP_FORMAT:Int
Const ALLEGRO_FORCE_LOCKING:Int
Const ALLEGRO_NO_PRESERVE_TEXTURE:Int
Const _ALLEGRO_ALPHA_TEST:Int
Const _ALLEGRO_INTERNAL_OPENGL:Int
Const ALLEGRO_MIN_LINEAR:Int
Const ALLEGRO_MAG_LINEAR:Int
Const ALLEGRO_MIPMAP:Int
Const _ALLEGRO_NO_PREMULTIPLIED_ALPHA:Int
Const ALLEGRO_VIDEO_BITMAP:Int
Const ALLEGRO_CONVERT_BITMAP:Int

'***** File: native/include\allegro5/bitmap.h *****

Function al_set_new_bitmap_format:Void( format:Int )
Function al_set_new_bitmap_flags:Void( flags:Int )
Function al_get_new_bitmap_format:Int(  )
Function al_get_new_bitmap_flags:Int(  )
Function al_add_new_bitmap_flag:Void( flag:Int )
Function al_get_bitmap_width:Int( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_bitmap_height:Int( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_bitmap_format:Int( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_bitmap_flags:Int( bitmap:ALLEGRO_BITMAP Ptr )
Function al_create_bitmap:ALLEGRO_BITMAP Ptr( w:Int, h:Int )
Function al_destroy_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr )
Function al_put_pixel:Void( x:Int, y:Int, color:ALLEGRO_COLOR )
Function al_put_blended_pixel:Void( x:Int, y:Int, color:ALLEGRO_COLOR )
Function al_get_pixel:ALLEGRO_COLOR( bitmap:ALLEGRO_BITMAP Ptr, x:Int, y:Int )
Function al_convert_mask_to_alpha:Void( bitmap:ALLEGRO_BITMAP Ptr, mask_color:ALLEGRO_COLOR )
Function al_set_clipping_rectangle:Void( x:Int, y:Int, width:Int, height:Int )
Function al_reset_clipping_rectangle:Void(  )
Function al_get_clipping_rectangle:Void( x:Int Ptr, y:Int Ptr, w:Int Ptr, h:Int Ptr )
Function al_create_sub_bitmap:ALLEGRO_BITMAP Ptr( parent:ALLEGRO_BITMAP Ptr, x:Int, y:Int, w:Int, h:Int )
Function al_is_sub_bitmap:Bool( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_parent_bitmap:ALLEGRO_BITMAP Ptr( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_bitmap_x:Int( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_bitmap_y:Int( bitmap:ALLEGRO_BITMAP Ptr )
Function al_reparent_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, parent:ALLEGRO_BITMAP Ptr, x:Int, y:Int, w:Int, h:Int )
Function al_clone_bitmap:ALLEGRO_BITMAP Ptr( bitmap:ALLEGRO_BITMAP Ptr )
Function al_convert_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr )
Function al_convert_memory_bitmaps:Void(  )
Const ALLEGRO_FLIP_HORIZONTAL:Int
Const ALLEGRO_FLIP_VERTICAL:Int

'***** File: native/include\allegro5/bitmap_draw.h *****

Function al_draw_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, dx:Float, dy:Float, flags:Int )
Function al_draw_bitmap_region:Void( bitmap:ALLEGRO_BITMAP Ptr, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, flags:Int )
Function al_draw_scaled_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float, flags:Int )
Function al_draw_rotated_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, cx:Float, cy:Float, dx:Float, dy:Float, angle:Float, flags:Int )
Function al_draw_scaled_rotated_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, cx:Float, cy:Float, dx:Float, dy:Float, xscale:Float, yscale:Float, angle:Float, flags:Int )
Function al_draw_tinted_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, tint:ALLEGRO_COLOR, dx:Float, dy:Float, flags:Int )
Function al_draw_tinted_bitmap_region:Void( bitmap:ALLEGRO_BITMAP Ptr, tint:ALLEGRO_COLOR, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, flags:Int )
Function al_draw_tinted_scaled_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, tint:ALLEGRO_COLOR, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float, flags:Int )
Function al_draw_tinted_rotated_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, tint:ALLEGRO_COLOR, cx:Float, cy:Float, dx:Float, dy:Float, angle:Float, flags:Int )
Function al_draw_tinted_scaled_rotated_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr, tint:ALLEGRO_COLOR, cx:Float, cy:Float, dx:Float, dy:Float, xscale:Float, yscale:Float, angle:Float, flags:Int )
Function al_draw_tinted_scaled_rotated_bitmap_region:Void( bitmap:ALLEGRO_BITMAP Ptr, sx:Float, sy:Float, sw:Float, sh:Float, tint:ALLEGRO_COLOR, cx:Float, cy:Float, dx:Float, dy:Float, xscale:Float, yscale:Float, angle:Float, flags:Int )

'***** File: native/include\allegro5/path.h *****

Function al_create_path:ALLEGRO_PATH Ptr( str:CString )
Function al_create_path_for_directory:ALLEGRO_PATH Ptr( str:CString )
Function al_clone_path:ALLEGRO_PATH Ptr( path:ALLEGRO_PATH Ptr )
Function al_get_path_num_components:Int( path:ALLEGRO_PATH Ptr )
Function al_get_path_component:CString( path:ALLEGRO_PATH Ptr, i:Int )
Function al_replace_path_component:Void( path:ALLEGRO_PATH Ptr, i:Int, s:CString )
Function al_remove_path_component:Void( path:ALLEGRO_PATH Ptr, i:Int )
Function al_insert_path_component:Void( path:ALLEGRO_PATH Ptr, i:Int, s:CString )
Function al_get_path_tail:CString( path:ALLEGRO_PATH Ptr )
Function al_drop_path_tail:Void( path:ALLEGRO_PATH Ptr )
Function al_append_path_component:Void( path:ALLEGRO_PATH Ptr, s:CString )
Function al_join_paths:Bool( path:ALLEGRO_PATH Ptr, tail:ALLEGRO_PATH Ptr )
Function al_rebase_path:Bool( head:ALLEGRO_PATH Ptr, tail:ALLEGRO_PATH Ptr )
Function al_path_cstr:CString( path:ALLEGRO_PATH Ptr, delim:libc.char_t )
Function al_destroy_path:Void( path:ALLEGRO_PATH Ptr )
Function al_set_path_drive:Void( path:ALLEGRO_PATH Ptr, drive:CString )
Function al_get_path_drive:CString( path:ALLEGRO_PATH Ptr )
Function al_set_path_filename:Void( path:ALLEGRO_PATH Ptr, filename:CString )
Function al_get_path_filename:CString( path:ALLEGRO_PATH Ptr )
Function al_get_path_extension:CString( path:ALLEGRO_PATH Ptr )
Function al_set_path_extension:Bool( path:ALLEGRO_PATH Ptr, extension_:CString )
Function al_get_path_basename:CString( path:ALLEGRO_PATH Ptr )
Function al_make_path_canonical:Bool( path:ALLEGRO_PATH Ptr )

'***** File: native/include\allegro5/utf8.h *****

Alias ALLEGRO_USTR:_al_tagbstring
Alias ALLEGRO_USTR_INFO:_al_tagbstring
Struct _al_tagbstring
	Field mlen:Int
	Field slen:Int
	Field data:UByte Ptr
End
Function al_ustr_new:ALLEGRO_USTR Ptr( s:CString )
Function al_ustr_new_from_buffer:ALLEGRO_USTR Ptr( s:CString, size:libc.size_t )
Function al_ustr_newf:ALLEGRO_USTR Ptr( fmt:CString )
Function al_ustr_free:Void( us:ALLEGRO_USTR Ptr )
Function al_cstr:CString( us:ALLEGRO_USTR Ptr )
Function al_ustr_to_buffer:Void( us:ALLEGRO_USTR Ptr, buffer:libc.char_t Ptr, size:Int )
Function al_cstr_dup:libc.char_t Ptr( us:ALLEGRO_USTR Ptr )
Function al_ustr_dup:ALLEGRO_USTR Ptr( us:ALLEGRO_USTR Ptr )
Function al_ustr_dup_substr:ALLEGRO_USTR Ptr( us:ALLEGRO_USTR Ptr, start_pos:Int, end_pos:Int )
Function al_ustr_empty_string:ALLEGRO_USTR Ptr(  )
Function al_ref_cstr:ALLEGRO_USTR Ptr( info:ALLEGRO_USTR_INFO Ptr, s:CString )
Function al_ref_buffer:ALLEGRO_USTR Ptr( info:ALLEGRO_USTR_INFO Ptr, s:CString, size:libc.size_t )
Function al_ref_ustr:ALLEGRO_USTR Ptr( info:ALLEGRO_USTR_INFO Ptr, us:ALLEGRO_USTR Ptr, start_pos:Int, end_pos:Int )
Function al_ustr_size:libc.size_t( us:ALLEGRO_USTR Ptr )
Function al_ustr_length:libc.size_t( us:ALLEGRO_USTR Ptr )
Function al_ustr_offset:Int( us:ALLEGRO_USTR Ptr, index:Int )
Function al_ustr_next:Bool( us:ALLEGRO_USTR Ptr, pos:Int Ptr )
Function al_ustr_prev:Bool( us:ALLEGRO_USTR Ptr, pos:Int Ptr )
Function al_ustr_get:Int(  )
Function al_ustr_get_next:Int(  )
Function al_ustr_prev_get:Int(  )
Function al_ustr_insert:Bool( us1:ALLEGRO_USTR Ptr, pos:Int, us2:ALLEGRO_USTR Ptr )
Function al_ustr_insert_cstr:Bool( us:ALLEGRO_USTR Ptr, pos:Int, us2:CString )
Function al_ustr_insert_chr:libc.size_t( us:ALLEGRO_USTR Ptr, pos:Int, c:Int )
Function al_ustr_append:Bool( us1:ALLEGRO_USTR Ptr, us2:ALLEGRO_USTR Ptr )
Function al_ustr_append_cstr:Bool( us:ALLEGRO_USTR Ptr, s:CString )
Function al_ustr_append_chr:libc.size_t( us:ALLEGRO_USTR Ptr, c:Int )
Function al_ustr_appendf:Bool( us:ALLEGRO_USTR Ptr, fmt:CString )
'Function al_ustr_vappendf:Bool( us:ALLEGRO_USTR Ptr, fmt:CString, ap:va_list )
Function al_ustr_remove_chr:Bool( us:ALLEGRO_USTR Ptr, pos:Int )
Function al_ustr_remove_range:Bool( us:ALLEGRO_USTR Ptr, start_pos:Int, end_pos:Int )
Function al_ustr_truncate:Bool( us:ALLEGRO_USTR Ptr, start_pos:Int )
Function al_ustr_ltrim_ws:Bool( us:ALLEGRO_USTR Ptr )
Function al_ustr_rtrim_ws:Bool( us:ALLEGRO_USTR Ptr )
Function al_ustr_trim_ws:Bool( us:ALLEGRO_USTR Ptr )
Function al_ustr_assign:Bool( us1:ALLEGRO_USTR Ptr, us2:ALLEGRO_USTR Ptr )
Function al_ustr_assign_substr:Bool( us1:ALLEGRO_USTR Ptr, us2:ALLEGRO_USTR Ptr, start_pos:Int, end_pos:Int )
Function al_ustr_assign_cstr:Bool( us1:ALLEGRO_USTR Ptr, s:CString )
Function al_ustr_set_chr:libc.size_t( us:ALLEGRO_USTR Ptr, pos:Int, c:Int )
Function al_ustr_replace_range:Bool( us1:ALLEGRO_USTR Ptr, start_pos1:Int, end_pos1:Int, us2:ALLEGRO_USTR Ptr )
Function al_ustr_find_chr:Int( us:ALLEGRO_USTR Ptr, start_pos:Int, c:Int )
Function al_ustr_rfind_chr:Int( us:ALLEGRO_USTR Ptr, start_pos:Int, c:Int )
Function al_ustr_find_set:Int( us:ALLEGRO_USTR Ptr, start_pos:Int, accept:ALLEGRO_USTR Ptr )
Function al_ustr_find_set_cstr:Int( us:ALLEGRO_USTR Ptr, start_pos:Int, accept:CString )
Function al_ustr_find_cset:Int( us:ALLEGRO_USTR Ptr, start_pos:Int, reject:ALLEGRO_USTR Ptr )
Function al_ustr_find_cset_cstr:Int( us:ALLEGRO_USTR Ptr, start_pos:Int, reject:CString )
Function al_ustr_find_str:Int( haystack:ALLEGRO_USTR Ptr, start_pos:Int, needle:ALLEGRO_USTR Ptr )
Function al_ustr_find_cstr:Int( haystack:ALLEGRO_USTR Ptr, start_pos:Int, needle:CString )
Function al_ustr_rfind_str:Int( haystack:ALLEGRO_USTR Ptr, start_pos:Int, needle:ALLEGRO_USTR Ptr )
Function al_ustr_rfind_cstr:Int( haystack:ALLEGRO_USTR Ptr, start_pos:Int, needle:CString )
Function al_ustr_find_replace:Bool( us:ALLEGRO_USTR Ptr, start_pos:Int, find:ALLEGRO_USTR Ptr, replace:ALLEGRO_USTR Ptr )
Function al_ustr_find_replace_cstr:Bool( us:ALLEGRO_USTR Ptr, start_pos:Int, find:CString, replace:CString )
Function al_ustr_equal:Bool( us1:ALLEGRO_USTR Ptr, us2:ALLEGRO_USTR Ptr )
Function al_ustr_compare:Int( u:ALLEGRO_USTR Ptr, v:ALLEGRO_USTR Ptr )
Function al_ustr_ncompare:Int( us1:ALLEGRO_USTR Ptr, us2:ALLEGRO_USTR Ptr, n:Int )
Function al_ustr_has_prefix:Bool( u:ALLEGRO_USTR Ptr, v:ALLEGRO_USTR Ptr )
Function al_ustr_has_prefix_cstr:Bool( u:ALLEGRO_USTR Ptr, s:CString )
Function al_ustr_has_suffix:Bool( u:ALLEGRO_USTR Ptr, v:ALLEGRO_USTR Ptr )
Function al_ustr_has_suffix_cstr:Bool( us1:ALLEGRO_USTR Ptr, s:CString )
Function al_utf8_width:libc.size_t( c:Int )
Function al_utf8_encode:libc.size_t( s:libc.char_t Ptr, c:Int )
Function al_ustr_new_from_utf16:ALLEGRO_USTR Ptr( Int )
Function al_ustr_size_utf16:libc.size_t( us:ALLEGRO_USTR Ptr )
Function al_ustr_encode_utf16:libc.size_t( us:ALLEGRO_USTR Ptr, s:Int Ptr, n:libc.size_t )
Function al_utf16_width:libc.size_t( c:Int )
Function al_utf16_encode:libc.size_t( s:Int Ptr, c:Int )

'***** File: native/include\allegro5/file.h *****

Struct ALLEGRO_FILE_INTERFACE
	Field fi_fopen:Void Ptr( CString, CString )
	Field fi_fclose:Bool( ALLEGRO_FILE Ptr )
	Field fi_fread:libc.size_t( ALLEGRO_FILE Ptr, Void Ptr, libc.size_t )
	Field fi_fwrite:libc.size_t( ALLEGRO_FILE Ptr, Void Ptr, libc.size_t )
	Field fi_fflush:Bool( ALLEGRO_FILE Ptr )
	Field fi_ftell:libc.int64_t( ALLEGRO_FILE Ptr )
	Field fi_fseek:Bool( ALLEGRO_FILE Ptr, Int, Int )
	Field fi_feof:Bool( ALLEGRO_FILE Ptr )
	Field fi_ferror:Int( ALLEGRO_FILE Ptr )
	Field fi_ferrmsg:CString( ALLEGRO_FILE Ptr )
	Field fi_fclearerr:Void( ALLEGRO_FILE Ptr )
	Field fi_fungetc:Int( ALLEGRO_FILE Ptr, Int )
	Field fi_size:Long( ALLEGRO_FILE Ptr) '// return off_t?
End
Enum ALLEGRO_SEEK
End
Const ALLEGRO_SEEK_SET:ALLEGRO_SEEK
Const ALLEGRO_SEEK_CUR:ALLEGRO_SEEK
Const ALLEGRO_SEEK_END:ALLEGRO_SEEK
Function al_fopen:ALLEGRO_FILE Ptr( path:CString, mode:CString )
Function al_fopen_interface:ALLEGRO_FILE Ptr( vt:ALLEGRO_FILE_INTERFACE Ptr, path:CString, mode:CString )
Function al_create_file_handle:ALLEGRO_FILE Ptr( vt:ALLEGRO_FILE_INTERFACE Ptr, userdata:Void Ptr )
Function al_fclose:Bool( f:ALLEGRO_FILE Ptr )
Function al_fread:libc.size_t( f:ALLEGRO_FILE Ptr, ptr_:Void Ptr, size:libc.size_t )
Function al_fwrite:libc.size_t( f:ALLEGRO_FILE Ptr, ptr_:Void Ptr, size:libc.size_t )
Function al_fflush:Bool( f:ALLEGRO_FILE Ptr )
Function al_ftell:Int(  )
Function al_fseek:Bool( f:ALLEGRO_FILE Ptr, offset:Int, whence:Int )
Function al_feof:Bool( f:ALLEGRO_FILE Ptr )
Function al_ferror:Int( f:ALLEGRO_FILE Ptr )
Function al_ferrmsg:CString( f:ALLEGRO_FILE Ptr )
Function al_fclearerr:Void( f:ALLEGRO_FILE Ptr )
Function al_fungetc:Int( f:ALLEGRO_FILE Ptr, c:Int )
Function al_fsize:Int(  )
Function al_fgetc:Int( f:ALLEGRO_FILE Ptr )
Function al_fputc:Int( f:ALLEGRO_FILE Ptr, c:Int )
Function al_fread16le:Int(  )
Function al_fread16be:Int(  )
Function al_fwrite16le:libc.size_t( f:ALLEGRO_FILE Ptr, w:Int )
Function al_fwrite16be:libc.size_t( f:ALLEGRO_FILE Ptr, w:Int )
Function al_fread32le:Int(  )
Function al_fread32be:Int(  )
Function al_fwrite32le:libc.size_t( f:ALLEGRO_FILE Ptr, l:Int )
Function al_fwrite32be:libc.size_t( f:ALLEGRO_FILE Ptr, l:Int )
Function al_fgets:libc.char_t Ptr( f:ALLEGRO_FILE Ptr, p:libc.char_t Ptr, max:libc.size_t )
Function al_fget_ustr:ALLEGRO_USTR Ptr( f:ALLEGRO_FILE Ptr )
Function al_fputs:Int( f:ALLEGRO_FILE Ptr, p:CString )
Function al_fprintf:Int( f:ALLEGRO_FILE Ptr, format:CString )
'Function al_vfprintf:Int( f:ALLEGRO_FILE Ptr, format:CString, args:va_list )
Function al_fopen_fd:ALLEGRO_FILE Ptr( fd:Int, mode:CString )
Function al_make_temp_file:ALLEGRO_FILE Ptr( tmpl:CString, ret_path:ALLEGRO_PATH Ptr Ptr )
Function al_fopen_slice:ALLEGRO_FILE Ptr( fp:ALLEGRO_FILE Ptr, initial_size:libc.size_t, mode:CString )
Function al_get_new_file_interface:ALLEGRO_FILE_INTERFACE Ptr(  )
Function al_set_new_file_interface:Void( file_interface:ALLEGRO_FILE_INTERFACE Ptr )
Function al_set_standard_file_interface:Void(  )
Function al_get_file_userdata:Void Ptr( f:ALLEGRO_FILE Ptr )
Const ALLEGRO_KEEP_BITMAP_FORMAT:Int
Const ALLEGRO_NO_PREMULTIPLIED_ALPHA:Int
Const ALLEGRO_KEEP_INDEX:Int

'***** File: native/include\allegro5/bitmap_io.h *****

Alias ALLEGRO_IIO_LOADER_FUNCTION:ALLEGRO_BITMAP Ptr( CString, Int )
Alias ALLEGRO_IIO_FS_LOADER_FUNCTION:ALLEGRO_BITMAP Ptr( ALLEGRO_FILE Ptr, Int )
Alias ALLEGRO_IIO_SAVER_FUNCTION:Bool( CString, ALLEGRO_BITMAP Ptr )
Alias ALLEGRO_IIO_FS_SAVER_FUNCTION:Bool( ALLEGRO_FILE Ptr, ALLEGRO_BITMAP Ptr )
Alias ALLEGRO_IIO_IDENTIFIER_FUNCTION:Bool( ALLEGRO_FILE Ptr )
Function al_register_bitmap_loader:Bool( ext:CString, loader:ALLEGRO_IIO_LOADER_FUNCTION )
Function al_register_bitmap_saver:Bool( ext:CString, saver:ALLEGRO_IIO_SAVER_FUNCTION )
Function al_register_bitmap_loader_f:Bool( ext:CString, fs_loader:ALLEGRO_IIO_FS_LOADER_FUNCTION )
Function al_register_bitmap_saver_f:Bool( ext:CString, fs_saver:ALLEGRO_IIO_FS_SAVER_FUNCTION )
Function al_register_bitmap_identifier:Bool( ext:CString, identifier:ALLEGRO_IIO_IDENTIFIER_FUNCTION )
Function al_load_bitmap:ALLEGRO_BITMAP Ptr( filename:CString )
Function al_load_bitmap_flags:ALLEGRO_BITMAP Ptr( filename:CString, flags:Int )
Function al_load_bitmap_f:ALLEGRO_BITMAP Ptr( fp:ALLEGRO_FILE Ptr, ident:CString )
Function al_load_bitmap_flags_f:ALLEGRO_BITMAP Ptr( fp:ALLEGRO_FILE Ptr, ident:CString, flags:Int )
Function al_save_bitmap:Bool( filename:CString, bitmap:ALLEGRO_BITMAP Ptr )
Function al_save_bitmap_f:Bool( fp:ALLEGRO_FILE Ptr, ident:CString, bitmap:ALLEGRO_BITMAP Ptr )
Function al_identify_bitmap_f:CString( fp:ALLEGRO_FILE Ptr )
Function al_identify_bitmap:CString( filename:CString )
Const ALLEGRO_LOCK_READWRITE:Int
Const ALLEGRO_LOCK_READONLY:Int
Const ALLEGRO_LOCK_WRITEONLY:Int

'***** File: native/include\allegro5/bitmap_lock.h *****

Struct ALLEGRO_LOCKED_REGION
	Field data:Void Ptr
	Field format:Int
	Field pitch:Int
	Field pixel_size:Int
End
Function al_lock_bitmap:ALLEGRO_LOCKED_REGION Ptr( bitmap:ALLEGRO_BITMAP Ptr, format:Int, flags:Int )
Function al_lock_bitmap_region:ALLEGRO_LOCKED_REGION Ptr( bitmap:ALLEGRO_BITMAP Ptr, x:Int, y:Int, width:Int, height:Int, format:Int, flags:Int )
Function al_lock_bitmap_blocked:ALLEGRO_LOCKED_REGION Ptr( bitmap:ALLEGRO_BITMAP Ptr, flags:Int )
Function al_lock_bitmap_region_blocked:ALLEGRO_LOCKED_REGION Ptr( bitmap:ALLEGRO_BITMAP Ptr, x_block:Int, y_block:Int, width_block:Int, height_block:Int, flags:Int )
Function al_unlock_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr )
Function al_is_bitmap_locked:Bool( bitmap:ALLEGRO_BITMAP Ptr )

'***** File: native/include\allegro5/blender.h *****

Enum ALLEGRO_BLEND_MODE
End
Const ALLEGRO_ZERO:ALLEGRO_BLEND_MODE
Const ALLEGRO_ONE:ALLEGRO_BLEND_MODE
Const ALLEGRO_ALPHA:ALLEGRO_BLEND_MODE
Const ALLEGRO_INVERSE_ALPHA:ALLEGRO_BLEND_MODE
Const ALLEGRO_SRC_COLOR:ALLEGRO_BLEND_MODE
Const ALLEGRO_DEST_COLOR:ALLEGRO_BLEND_MODE
Const ALLEGRO_INVERSE_SRC_COLOR:ALLEGRO_BLEND_MODE
Const ALLEGRO_INVERSE_DEST_COLOR:ALLEGRO_BLEND_MODE
Const ALLEGRO_CONST_COLOR:ALLEGRO_BLEND_MODE
Const ALLEGRO_INVERSE_CONST_COLOR:ALLEGRO_BLEND_MODE
Const ALLEGRO_NUM_BLEND_MODES:ALLEGRO_BLEND_MODE
Enum ALLEGRO_BLEND_OPERATIONS
End
Const ALLEGRO_ADD:ALLEGRO_BLEND_OPERATIONS
Const ALLEGRO_SRC_MINUS_DEST:ALLEGRO_BLEND_OPERATIONS
Const ALLEGRO_DEST_MINUS_SRC:ALLEGRO_BLEND_OPERATIONS
Const ALLEGRO_NUM_BLEND_OPERATIONS:ALLEGRO_BLEND_OPERATIONS
Function al_set_blender:Void( op:Int, source:Int, dest:Int )
Function al_set_blend_color:Void( color:ALLEGRO_COLOR )
Function al_get_blender:Void( op:Int Ptr, source:Int Ptr, dest:Int Ptr )
Function al_get_blend_color:ALLEGRO_COLOR(  )
Function al_set_separate_blender:Void( op:Int, source:Int, dest:Int, alpha_op:Int, alpha_source:Int, alpha_dest:Int )
Function al_get_separate_blender:Void( op:Int Ptr, source:Int Ptr, dest:Int Ptr, alpha_op:Int Ptr, alpha_src:Int Ptr, alpha_dest:Int Ptr )

'***** File: native/include\allegro5/events.h *****

Alias ALLEGRO_EVENT_TYPE:UInt
Const ALLEGRO_EVENT_JOYSTICK_AXIS:Int
Const ALLEGRO_EVENT_JOYSTICK_BUTTON_DOWN:Int
Const ALLEGRO_EVENT_JOYSTICK_BUTTON_UP:Int
Const ALLEGRO_EVENT_JOYSTICK_CONFIGURATION:Int
Const ALLEGRO_EVENT_KEY_DOWN:Int
Const ALLEGRO_EVENT_KEY_CHAR:Int
Const ALLEGRO_EVENT_KEY_UP:Int
Const ALLEGRO_EVENT_MOUSE_AXES:Int
Const ALLEGRO_EVENT_MOUSE_BUTTON_DOWN:Int
Const ALLEGRO_EVENT_MOUSE_BUTTON_UP:Int
Const ALLEGRO_EVENT_MOUSE_ENTER_DISPLAY:Int
Const ALLEGRO_EVENT_MOUSE_LEAVE_DISPLAY:Int
Const ALLEGRO_EVENT_MOUSE_WARPED:Int
Const ALLEGRO_EVENT_TIMER:Int
Const ALLEGRO_EVENT_DISPLAY_EXPOSE:Int
Const ALLEGRO_EVENT_DISPLAY_RESIZE:Int
Const ALLEGRO_EVENT_DISPLAY_CLOSE:Int
Const ALLEGRO_EVENT_DISPLAY_LOST:Int
Const ALLEGRO_EVENT_DISPLAY_FOUND:Int
Const ALLEGRO_EVENT_DISPLAY_SWITCH_IN:Int
Const ALLEGRO_EVENT_DISPLAY_SWITCH_OUT:Int
Const ALLEGRO_EVENT_DISPLAY_ORIENTATION:Int
Const ALLEGRO_EVENT_DISPLAY_HALT_DRAWING:Int
Const ALLEGRO_EVENT_DISPLAY_RESUME_DRAWING:Int
Const ALLEGRO_EVENT_TOUCH_BEGIN:Int
Const ALLEGRO_EVENT_TOUCH_END:Int
Const ALLEGRO_EVENT_TOUCH_MOVE:Int
Const ALLEGRO_EVENT_TOUCH_CANCEL:Int
Const ALLEGRO_EVENT_DISPLAY_CONNECTED:Int
Const ALLEGRO_EVENT_DISPLAY_DISCONNECTED:Int
Struct ALLEGRO_EVENT_SOURCE
	Field __pad:Int Ptr
End
Struct ALLEGRO_ANY_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_EVENT_SOURCE Ptr
	Field timestamp:Double
End
Struct ALLEGRO_DISPLAY_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_DISPLAY Ptr
	Field timestamp:Double
	Field x:Int
	Field y:Int
	Field width:Int
	Field height:Int
	Field orientation:Int
End
Struct ALLEGRO_JOYSTICK_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_JOYSTICK Ptr
	Field timestamp:Double
	Field id:ALLEGRO_JOYSTICK Ptr
	Field stick:Int
	Field axis:Int
	Field pos:Float
	Field button:Int
End
Struct ALLEGRO_KEYBOARD_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_KEYBOARD Ptr
	Field timestamp:Double
	Field display:ALLEGRO_DISPLAY Ptr
	Field keycode:Int
	Field unichar:Int
	Field modifiers:UInt
	Field repeat_:Bool
End
Struct ALLEGRO_MOUSE_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_MOUSE Ptr
	Field timestamp:Double
	Field display:ALLEGRO_DISPLAY Ptr
	Field x:Int
	Field y:Int
	Field z:Int
	Field w:Int
	Field dx:Int
	Field dy:Int
	Field dz:Int
	Field dw:Int
	Field button:UInt
	Field pressure:Float
End
Struct ALLEGRO_TIMER_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_TIMER Ptr
	Field timestamp:Double
	Field count:Int
	Field error:Double
End
Struct ALLEGRO_TOUCH_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_TOUCH_INPUT Ptr
	Field timestamp:Double
	Field display:ALLEGRO_DISPLAY Ptr
	Field id:Int
	Field x:Float
	Field y:Float
	Field dx:Float
	Field dy:Float
	Field primary:Bool
End
Struct ALLEGRO_USER_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field source:ALLEGRO_EVENT_SOURCE Ptr
	Field timestamp:Double
	Field __internal__descr:ALLEGRO_USER_EVENT_DESCRIPTOR Ptr
	Field data1:libc.intptr_t
	Field data2:libc.intptr_t
	Field data3:libc.intptr_t
	Field data4:libc.intptr_t
End

Struct ALLEGRO_USER_EVENT_DESCRIPTOR
End

Struct ALLEGRO_EVENT
	Field type:ALLEGRO_EVENT_TYPE
	Field any:ALLEGRO_ANY_EVENT
	Field display:ALLEGRO_DISPLAY_EVENT
	Field joystick:ALLEGRO_JOYSTICK_EVENT
	Field keyboard:ALLEGRO_KEYBOARD_EVENT
	Field mouse:ALLEGRO_MOUSE_EVENT
	Field timer:ALLEGRO_TIMER_EVENT
	Field touch:ALLEGRO_TOUCH_EVENT
	Field user:ALLEGRO_USER_EVENT
End
Function al_init_user_event_source:Void( ALLEGRO_EVENT_SOURCE Ptr )
Function al_destroy_user_event_source:Void( ALLEGRO_EVENT_SOURCE Ptr )
Function al_emit_user_event:Bool( ALLEGRO_EVENT_SOURCE Ptr, ALLEGRO_EVENT Ptr, dtor:Void( ALLEGRO_USER_EVENT Ptr ) )
Function al_unref_user_event:Void( ALLEGRO_USER_EVENT Ptr )
Function al_set_event_source_data:Void( ALLEGRO_EVENT_SOURCE Ptr, data:libc.intptr_t )
Function al_get_event_source_data:libc.intptr_t( ALLEGRO_EVENT_SOURCE Ptr )
Function al_create_event_queue:ALLEGRO_EVENT_QUEUE Ptr(  )
Function al_destroy_event_queue:Void( ALLEGRO_EVENT_QUEUE Ptr )
Function al_is_event_source_registered:Bool( ALLEGRO_EVENT_QUEUE Ptr, ALLEGRO_EVENT_SOURCE Ptr )
Function al_register_event_source:Void( ALLEGRO_EVENT_QUEUE Ptr, ALLEGRO_EVENT_SOURCE Ptr )
Function al_unregister_event_source:Void( ALLEGRO_EVENT_QUEUE Ptr, ALLEGRO_EVENT_SOURCE Ptr )
Function al_pause_event_queue:Void( ALLEGRO_EVENT_QUEUE Ptr, Bool )
Function al_is_event_queue_paused:Bool( ALLEGRO_EVENT_QUEUE Ptr )
Function al_is_event_queue_empty:Bool( ALLEGRO_EVENT_QUEUE Ptr )
Function al_get_next_event:Bool( ALLEGRO_EVENT_QUEUE Ptr, ret_event:ALLEGRO_EVENT Ptr )
Function al_peek_next_event:Bool( ALLEGRO_EVENT_QUEUE Ptr, ret_event:ALLEGRO_EVENT Ptr )
Function al_drop_next_event:Bool( ALLEGRO_EVENT_QUEUE Ptr )
Function al_flush_event_queue:Void( ALLEGRO_EVENT_QUEUE Ptr )
Function al_wait_for_event:Void( ALLEGRO_EVENT_QUEUE Ptr, ret_event:ALLEGRO_EVENT Ptr )
Function al_wait_for_event_timed:Bool( ALLEGRO_EVENT_QUEUE Ptr, ret_event:ALLEGRO_EVENT Ptr, secs:Float )
Function al_wait_for_event_until:Bool( queue:ALLEGRO_EVENT_QUEUE Ptr, ret_event:ALLEGRO_EVENT Ptr, timeout:ALLEGRO_TIMEOUT Ptr )
Const ALLEGRO_WINDOWED:Int
Const ALLEGRO_FULLSCREEN:Int
Const ALLEGRO_OPENGL:Int
Const ALLEGRO_DIRECT3D_INTERNAL:Int
Const ALLEGRO_RESIZABLE:Int
Const ALLEGRO_FRAMELESS:Int
Const ALLEGRO_NOFRAME:Int
Const ALLEGRO_GENERATE_EXPOSE_EVENTS:Int
Const ALLEGRO_OPENGL_3_0:Int
Const ALLEGRO_OPENGL_FORWARD_COMPATIBLE:Int
Const ALLEGRO_FULLSCREEN_WINDOW:Int
Const ALLEGRO_MINIMIZED:Int
Const ALLEGRO_PROGRAMMABLE_PIPELINE:Int
Const ALLEGRO_GTK_TOPLEVEL_INTERNAL:Int
Const ALLEGRO_MAXIMIZED:Int
Const ALLEGRO_OPENGL_ES_PROFILE:Int

'***** File: native/include\allegro5/display.h *****

Enum ALLEGRO_DISPLAY_OPTIONS
End
Const ALLEGRO_RED_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_GREEN_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_BLUE_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_ALPHA_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_RED_SHIFT:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_GREEN_SHIFT:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_BLUE_SHIFT:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_ALPHA_SHIFT:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_ACC_RED_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_ACC_GREEN_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_ACC_BLUE_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_ACC_ALPHA_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_STEREO:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_AUX_BUFFERS:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_COLOR_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_DEPTH_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_STENCIL_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SAMPLE_BUFFERS:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SAMPLES:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_RENDER_METHOD:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_FLOAT_COLOR:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_FLOAT_DEPTH:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SINGLE_BUFFER:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SWAP_METHOD:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_COMPATIBLE_DISPLAY:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_UPDATE_DISPLAY_REGION:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_VSYNC:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_MAX_BITMAP_SIZE:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SUPPORT_NPOT_BITMAP:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_CAN_DRAW_INTO_BITMAP:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SUPPORT_SEPARATE_ALPHA:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_AUTO_CONVERT_BITMAPS:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_SUPPORTED_ORIENTATIONS:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_OPENGL_MAJOR_VERSION:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_OPENGL_MINOR_VERSION:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_DISPLAY_OPTIONS_COUNT:ALLEGRO_DISPLAY_OPTIONS
Const ALLEGRO_DONTCARE:Int
Const ALLEGRO_REQUIRE:Int
Const ALLEGRO_SUGGEST:Int
Enum ALLEGRO_DISPLAY_ORIENTATION
End
Const ALLEGRO_DISPLAY_ORIENTATION_UNKNOWN:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_0_DEGREES:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_90_DEGREES:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_180_DEGREES:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_270_DEGREES:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_PORTRAIT:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_LANDSCAPE:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_ALL:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_FACE_UP:ALLEGRO_DISPLAY_ORIENTATION
Const ALLEGRO_DISPLAY_ORIENTATION_FACE_DOWN:ALLEGRO_DISPLAY_ORIENTATION
Const _ALLEGRO_PRIM_MAX_USER_ATTR:Int
Function al_set_new_display_refresh_rate:Void( refresh_rate:Int )
Function al_set_new_display_flags:Void( flags:Int )
Function al_get_new_display_refresh_rate:Int(  )
Function al_get_new_display_flags:Int(  )
Function al_set_new_window_title:Void( title:CString )
Function al_get_new_window_title:CString(  )
Function al_get_display_width:Int( display:ALLEGRO_DISPLAY Ptr )
Function al_get_display_height:Int( display:ALLEGRO_DISPLAY Ptr )
Function al_get_display_format:Int( display:ALLEGRO_DISPLAY Ptr )
Function al_get_display_refresh_rate:Int( display:ALLEGRO_DISPLAY Ptr )
Function al_get_display_flags:Int( display:ALLEGRO_DISPLAY Ptr )
Function al_get_display_orientation:Int( display:ALLEGRO_DISPLAY Ptr )
Function al_set_display_flag:Bool( display:ALLEGRO_DISPLAY Ptr, flag:Int, onoff:Bool )
Function al_create_display:ALLEGRO_DISPLAY Ptr( w:Int, h:Int )
Function al_destroy_display:Void( display:ALLEGRO_DISPLAY Ptr )
Function al_get_current_display:ALLEGRO_DISPLAY Ptr(  )
Function al_set_target_bitmap:Void( bitmap:ALLEGRO_BITMAP Ptr )
Function al_set_target_backbuffer:Void( display:ALLEGRO_DISPLAY Ptr )
Function al_get_backbuffer:ALLEGRO_BITMAP Ptr( display:ALLEGRO_DISPLAY Ptr )
Function al_get_target_bitmap:ALLEGRO_BITMAP Ptr(  )
Function al_acknowledge_resize:Bool( display:ALLEGRO_DISPLAY Ptr )
Function al_resize_display:Bool( display:ALLEGRO_DISPLAY Ptr, width:Int, height:Int )
Function al_flip_display:Void(  )
Function al_update_display_region:Void( x:Int, y:Int, width:Int, height:Int )
Function al_is_compatible_bitmap:Bool( bitmap:ALLEGRO_BITMAP Ptr )
Function al_wait_for_vsync:Bool(  )
Function al_get_display_event_source:ALLEGRO_EVENT_SOURCE Ptr( display:ALLEGRO_DISPLAY Ptr )
Function al_set_display_icon:Void( display:ALLEGRO_DISPLAY Ptr, icon:ALLEGRO_BITMAP Ptr )
Function al_set_display_icons:Void( display:ALLEGRO_DISPLAY Ptr, num_icons:Int, icons:ALLEGRO_BITMAP Ptr Ptr )
Function al_get_new_display_adapter:Int(  )
Function al_set_new_display_adapter:Void( adapter:Int )
Function al_set_new_window_position:Void( x:Int, y:Int )
Function al_get_new_window_position:Void( x:Int Ptr, y:Int Ptr )
Function al_set_window_position:Void( display:ALLEGRO_DISPLAY Ptr, x:Int, y:Int )
Function al_get_window_position:Void( display:ALLEGRO_DISPLAY Ptr, x:Int Ptr, y:Int Ptr )
Function al_set_window_constraints:Bool( display:ALLEGRO_DISPLAY Ptr, min_w:Int, min_h:Int, max_w:Int, max_h:Int )
Function al_get_window_constraints:Bool( display:ALLEGRO_DISPLAY Ptr, min_w:Int Ptr, min_h:Int Ptr, max_w:Int Ptr, max_h:Int Ptr )
Function al_set_window_title:Void( display:ALLEGRO_DISPLAY Ptr, title:CString )
Function al_set_new_display_option:Void( option:Int, value:Int, importance:Int )
Function al_get_new_display_option:Int( option:Int, importance:Int Ptr )
Function al_reset_new_display_options:Void(  )
Function al_set_display_option:Void( display:ALLEGRO_DISPLAY Ptr, option:Int, value:Int )
Function al_get_display_option:Int( display:ALLEGRO_DISPLAY Ptr, option:Int )
Function al_hold_bitmap_drawing:Void( hold:Bool )
Function al_is_bitmap_drawing_held:Bool(  )
Function al_acknowledge_drawing_halt:Void( display:ALLEGRO_DISPLAY Ptr )
Function al_acknowledge_drawing_resume:Void( display:ALLEGRO_DISPLAY Ptr )

'***** File: native/include\allegro5/clipboard.h *****

Function al_get_clipboard_text:libc.char_t Ptr( display:ALLEGRO_DISPLAY Ptr )
Function al_set_clipboard_text:Bool( display:ALLEGRO_DISPLAY Ptr, text:CString )
Function al_clipboard_has_text:Bool( display:ALLEGRO_DISPLAY Ptr )

'***** File: native/include\allegro5/config.h *****

Function al_create_config:ALLEGRO_CONFIG Ptr(  )
Function al_add_config_section:Void( config:ALLEGRO_CONFIG Ptr, name:CString )
Function al_set_config_value:Void( config:ALLEGRO_CONFIG Ptr, section:CString, key:CString, value:CString )
Function al_add_config_comment:Void( config:ALLEGRO_CONFIG Ptr, section:CString, comment:CString )
Function al_get_config_value:CString( config:ALLEGRO_CONFIG Ptr, section:CString, key:CString )
Function al_load_config_file:ALLEGRO_CONFIG Ptr( filename:CString )
Function al_load_config_file_f:ALLEGRO_CONFIG Ptr( filename:ALLEGRO_FILE Ptr )
Function al_save_config_file:Bool( filename:CString, config:ALLEGRO_CONFIG Ptr )
Function al_save_config_file_f:Bool( file:ALLEGRO_FILE Ptr, config:ALLEGRO_CONFIG Ptr )
Function al_merge_config_into:Void( master:ALLEGRO_CONFIG Ptr, add:ALLEGRO_CONFIG Ptr )
Function al_merge_config:ALLEGRO_CONFIG Ptr( cfg1:ALLEGRO_CONFIG Ptr, cfg2:ALLEGRO_CONFIG Ptr )
Function al_destroy_config:Void( config:ALLEGRO_CONFIG Ptr )
Function al_remove_config_section:Bool( config:ALLEGRO_CONFIG Ptr, section:CString )
Function al_remove_config_key:Bool( config:ALLEGRO_CONFIG Ptr, section:CString, key:CString )
Function al_get_first_config_section:CString( config:ALLEGRO_CONFIG Ptr, iterator:ALLEGRO_CONFIG_SECTION Ptr Ptr )
Function al_get_next_config_section:CString( iterator:ALLEGRO_CONFIG_SECTION Ptr Ptr )
Function al_get_first_config_entry:CString( config:ALLEGRO_CONFIG Ptr, section:CString, iterator:ALLEGRO_CONFIG_ENTRY Ptr Ptr )
Function al_get_next_config_entry:CString( iterator:ALLEGRO_CONFIG_ENTRY Ptr Ptr )

'***** File: native/include\allegro5/cpu.h *****

Function al_get_cpu_count:Int(  )
Function al_get_ram_size:Int(  )

'***** File: native/include\allegro5/debug.h *****

Function _al_trace_prefix:Bool( channel:CString, level:Int, file:CString, line:Int, function_:CString )
Function _al_trace_suffix:Void( msg:CString )
Global _al_user_assert_handler:Void( CString, CString, Int, CString )
Function al_register_assert_handler:Void( handler:Void( CString, CString, Int, CString ) )
Function al_register_trace_handler:Void( handler:Void( CString ) )

'***** File: native/include\allegro5/drawing.h *****

Function al_clear_to_color:Void( color:ALLEGRO_COLOR )
Function al_clear_depth_buffer:Void( x:Float )
Function al_draw_pixel:Void( x:Float, y:Float, color:ALLEGRO_COLOR )

'***** File: native/include\allegro5/error.h *****

Function al_get_errno:Int(  )
Function al_set_errno:Void( errnum:Int )

'***** File: native/include\allegro5/fixed.h *****

Alias al_fixed:Int
Const al_fixtorad_r:al_fixed
Const al_radtofix_r:al_fixed

'***** File: native/include\allegro5/fmaths.h *****

Function al_fixsqrt:al_fixed( x:al_fixed )
Function al_fixhypot:al_fixed( x:al_fixed, y:al_fixed )
Function al_fixatan:al_fixed( x:al_fixed )
Function al_fixatan2:al_fixed( y:al_fixed, x:al_fixed )
Global _al_fix_cos_tbl:al_fixed Ptr
Global _al_fix_tan_tbl:al_fixed Ptr
Global _al_fix_acos_tbl:al_fixed Ptr

'***** File: native/include\allegro5/inline/fmaths.inl *****

Function al_ftofix:al_fixed( x:Double )
Function al_fixtof:Double( x:al_fixed )
Function al_fixadd:al_fixed( x:al_fixed, y:al_fixed )
Function al_fixsub:al_fixed( x:al_fixed, y:al_fixed )
Function al_fixmul:al_fixed( x:al_fixed, y:al_fixed )
Function al_fixdiv:al_fixed( x:al_fixed, y:al_fixed )
Function al_fixfloor:Int( x:al_fixed )
Function al_fixceil:Int( x:al_fixed )
Function al_itofix:al_fixed( x:Int )
Function al_fixtoi:Int( x:al_fixed )
Function al_fixcos:al_fixed( x:al_fixed )
Function al_fixsin:al_fixed( x:al_fixed )
Function al_fixtan:al_fixed( x:al_fixed )
Function al_fixacos:al_fixed( x:al_fixed )
Function al_fixasin:al_fixed( x:al_fixed )

'***** File: native/include\allegro5/fshook.h *****

Struct ALLEGRO_FS_ENTRY
	Field vtable:ALLEGRO_FS_INTERFACE Ptr
End
Enum ALLEGRO_FILE_MODE
End
Const ALLEGRO_FILEMODE_READ:ALLEGRO_FILE_MODE
Const ALLEGRO_FILEMODE_WRITE:ALLEGRO_FILE_MODE
Const ALLEGRO_FILEMODE_EXECUTE:ALLEGRO_FILE_MODE
Const ALLEGRO_FILEMODE_HIDDEN:ALLEGRO_FILE_MODE
Const ALLEGRO_FILEMODE_ISFILE:ALLEGRO_FILE_MODE
Const ALLEGRO_FILEMODE_ISDIR:ALLEGRO_FILE_MODE
Struct ALLEGRO_FS_INTERFACE
	Field fs_create_entry:ALLEGRO_FS_ENTRY Ptr( CString )
	Field fs_destroy_entry:Void( ALLEGRO_FS_ENTRY Ptr )
	Field fs_entry_name:CString( ALLEGRO_FS_ENTRY Ptr )
	Field fs_update_entry:Bool( ALLEGRO_FS_ENTRY Ptr )
	Field fs_entry_mode:libc.uint32_t( ALLEGRO_FS_ENTRY Ptr )
	Field fs_entry_atime:Long( ALLEGRO_FS_ENTRY Ptr ) '// return time_t
	Field fs_entry_mtime:Long( ALLEGRO_FS_ENTRY Ptr ) '// return time_t
	Field fs_entry_ctime:Long( ALLEGRO_FS_ENTRY Ptr ) '// return time_t
	Field fs_entry_size:Long( ALLEGRO_FS_ENTRY Ptr ) '// return off_t
	Field fs_entry_exists:Bool( ALLEGRO_FS_ENTRY Ptr )
	Field fs_remove_entry:Bool( ALLEGRO_FS_ENTRY Ptr )
	Field fs_open_directory:Bool( ALLEGRO_FS_ENTRY Ptr )
	Field fs_read_directory:ALLEGRO_FS_ENTRY Ptr( ALLEGRO_FS_ENTRY Ptr )
	Field fs_close_directory:Bool( ALLEGRO_FS_ENTRY Ptr )
	Field fs_filename_exists:Bool( CString )
	Field fs_remove_filename:Bool( CString )
	Field fs_get_current_directory:libc.char_t Ptr(  )
	Field fs_change_directory:Bool( CString )
	Field fs_make_directory:Bool( CString )
	Field fs_open_file:ALLEGRO_FILE Ptr( ALLEGRO_FS_ENTRY Ptr, CString )
End
Function al_create_fs_entry:ALLEGRO_FS_ENTRY Ptr( path:CString )
Function al_destroy_fs_entry:Void( e:ALLEGRO_FS_ENTRY Ptr )
Function al_get_fs_entry_name:CString( e:ALLEGRO_FS_ENTRY Ptr )
Function al_update_fs_entry:Bool( e:ALLEGRO_FS_ENTRY Ptr )
Function al_get_fs_entry_mode:Int(  )
Function al_get_fs_entry_atime:Int(  )
Function al_get_fs_entry_mtime:Int(  )
Function al_get_fs_entry_ctime:Int(  )
Function al_get_fs_entry_size:Int(  )
Function al_fs_entry_exists:Bool( e:ALLEGRO_FS_ENTRY Ptr )
Function al_remove_fs_entry:Bool( e:ALLEGRO_FS_ENTRY Ptr )
Function al_open_directory:Bool( e:ALLEGRO_FS_ENTRY Ptr )
Function al_read_directory:ALLEGRO_FS_ENTRY Ptr( e:ALLEGRO_FS_ENTRY Ptr )
Function al_close_directory:Bool( e:ALLEGRO_FS_ENTRY Ptr )
Function al_filename_exists:Bool( path:CString )
Function al_remove_filename:Bool( path:CString )
Function al_get_current_directory:libc.char_t Ptr(  )
Function al_change_directory:Bool( path:CString )
Function al_make_directory:Bool( path:CString )
Function al_open_fs_entry:ALLEGRO_FILE Ptr( e:ALLEGRO_FS_ENTRY Ptr, mode:CString )
Enum ALLEGRO_FOR_EACH_FS_ENTRY_RESULT
End
Const ALLEGRO_FOR_EACH_FS_ENTRY_ERROR:ALLEGRO_FOR_EACH_FS_ENTRY_RESULT
Const ALLEGRO_FOR_EACH_FS_ENTRY_OK:ALLEGRO_FOR_EACH_FS_ENTRY_RESULT
Const ALLEGRO_FOR_EACH_FS_ENTRY_SKIP:ALLEGRO_FOR_EACH_FS_ENTRY_RESULT
Const ALLEGRO_FOR_EACH_FS_ENTRY_STOP:ALLEGRO_FOR_EACH_FS_ENTRY_RESULT
Function al_for_each_fs_entry:Int( dir:ALLEGRO_FS_ENTRY Ptr, callback:Int( ALLEGRO_FS_ENTRY Ptr, Void Ptr ), extra:Void Ptr )
Function al_get_fs_interface:ALLEGRO_FS_INTERFACE Ptr(  )
Function al_set_fs_interface:Void( vtable:ALLEGRO_FS_INTERFACE Ptr )
Function al_set_standard_fs_interface:Void(  )

'***** File: native/include\allegro5/fullscreen_mode.h *****

Struct ALLEGRO_DISPLAY_MODE
	Field width:Int
	Field height:Int
	Field format:Int
	Field refresh_rate:Int
End
Function al_get_num_display_modes:Int(  )
Function al_get_display_mode:ALLEGRO_DISPLAY_MODE Ptr( index:Int, mode:ALLEGRO_DISPLAY_MODE Ptr )

'***** File: native/include\allegro5/joystick.h *****

Struct ALLEGRO_JOYSTICK
End

Struct ALLEGRO_JOYSTICK_STATE
	Struct stick_s
		Field axis:Float[] '// _AL_MAX_JOYSTICK_AXES = 3
	End
	Field stick:stick_s[] '// _AL_MAX_JOYSTICK_AXES = 3
	Field button:Int Ptr
End
Enum ALLEGRO_JOYFLAGS
End
Const ALLEGRO_JOYFLAG_DIGITAL:ALLEGRO_JOYFLAGS
Const ALLEGRO_JOYFLAG_ANALOGUE:ALLEGRO_JOYFLAGS
Function al_install_joystick:Bool(  )
Function al_uninstall_joystick:Void(  )
Function al_is_joystick_installed:Bool(  )
Function al_reconfigure_joysticks:Bool(  )
Function al_get_num_joysticks:Int(  )
Function al_get_joystick:ALLEGRO_JOYSTICK Ptr( joyn:Int )
Function al_release_joystick:Void( ALLEGRO_JOYSTICK Ptr )
Function al_get_joystick_active:Bool( ALLEGRO_JOYSTICK Ptr )
Function al_get_joystick_name:CString( ALLEGRO_JOYSTICK Ptr )
Function al_get_joystick_num_sticks:Int( ALLEGRO_JOYSTICK Ptr )
Function al_get_joystick_stick_flags:Int( ALLEGRO_JOYSTICK Ptr, stick:Int )
Function al_get_joystick_stick_name:CString( ALLEGRO_JOYSTICK Ptr, stick:Int )
Function al_get_joystick_num_axes:Int( ALLEGRO_JOYSTICK Ptr, stick:Int )
Function al_get_joystick_axis_name:CString( ALLEGRO_JOYSTICK Ptr, stick:Int, axis:Int )
Function al_get_joystick_num_buttons:Int( ALLEGRO_JOYSTICK Ptr )
Function al_get_joystick_button_name:CString( ALLEGRO_JOYSTICK Ptr, buttonn:Int )
Function al_get_joystick_state:Void( ALLEGRO_JOYSTICK Ptr, ret_state:ALLEGRO_JOYSTICK_STATE Ptr )
Function al_get_joystick_event_source:ALLEGRO_EVENT_SOURCE Ptr(  )
Const ALLEGRO_KEY_A:Int
Const ALLEGRO_KEY_B:Int
Const ALLEGRO_KEY_C:Int
Const ALLEGRO_KEY_D:Int
Const ALLEGRO_KEY_E:Int
Const ALLEGRO_KEY_F:Int
Const ALLEGRO_KEY_G:Int
Const ALLEGRO_KEY_H:Int
Const ALLEGRO_KEY_I:Int
Const ALLEGRO_KEY_J:Int
Const ALLEGRO_KEY_K:Int
Const ALLEGRO_KEY_L:Int
Const ALLEGRO_KEY_M:Int
Const ALLEGRO_KEY_N:Int
Const ALLEGRO_KEY_O:Int
Const ALLEGRO_KEY_P:Int
Const ALLEGRO_KEY_Q:Int
Const ALLEGRO_KEY_R:Int
Const ALLEGRO_KEY_S:Int
Const ALLEGRO_KEY_T:Int
Const ALLEGRO_KEY_U:Int
Const ALLEGRO_KEY_V:Int
Const ALLEGRO_KEY_W:Int
Const ALLEGRO_KEY_X:Int
Const ALLEGRO_KEY_Y:Int
Const ALLEGRO_KEY_Z:Int
Const ALLEGRO_KEY_0:Int
Const ALLEGRO_KEY_1:Int
Const ALLEGRO_KEY_2:Int
Const ALLEGRO_KEY_3:Int
Const ALLEGRO_KEY_4:Int
Const ALLEGRO_KEY_5:Int
Const ALLEGRO_KEY_6:Int
Const ALLEGRO_KEY_7:Int
Const ALLEGRO_KEY_8:Int
Const ALLEGRO_KEY_9:Int
Const ALLEGRO_KEY_PAD_0:Int
Const ALLEGRO_KEY_PAD_1:Int
Const ALLEGRO_KEY_PAD_2:Int
Const ALLEGRO_KEY_PAD_3:Int
Const ALLEGRO_KEY_PAD_4:Int
Const ALLEGRO_KEY_PAD_5:Int
Const ALLEGRO_KEY_PAD_6:Int
Const ALLEGRO_KEY_PAD_7:Int
Const ALLEGRO_KEY_PAD_8:Int
Const ALLEGRO_KEY_PAD_9:Int
Const ALLEGRO_KEY_F1:Int
Const ALLEGRO_KEY_F2:Int
Const ALLEGRO_KEY_F3:Int
Const ALLEGRO_KEY_F4:Int
Const ALLEGRO_KEY_F5:Int
Const ALLEGRO_KEY_F6:Int
Const ALLEGRO_KEY_F7:Int
Const ALLEGRO_KEY_F8:Int
Const ALLEGRO_KEY_F9:Int
Const ALLEGRO_KEY_F10:Int
Const ALLEGRO_KEY_F11:Int
Const ALLEGRO_KEY_F12:Int
Const ALLEGRO_KEY_ESCAPE:Int
Const ALLEGRO_KEY_TILDE:Int
Const ALLEGRO_KEY_MINUS:Int
Const ALLEGRO_KEY_EQUALS:Int
Const ALLEGRO_KEY_BACKSPACE:Int
Const ALLEGRO_KEY_TAB:Int
Const ALLEGRO_KEY_OPENBRACE:Int
Const ALLEGRO_KEY_CLOSEBRACE:Int
Const ALLEGRO_KEY_ENTER:Int
Const ALLEGRO_KEY_SEMICOLON:Int
Const ALLEGRO_KEY_QUOTE:Int
Const ALLEGRO_KEY_BACKSLASH:Int
Const ALLEGRO_KEY_BACKSLASH2:Int
Const ALLEGRO_KEY_COMMA:Int
Const ALLEGRO_KEY_FULLSTOP:Int
Const ALLEGRO_KEY_SLASH:Int
Const ALLEGRO_KEY_SPACE:Int
Const ALLEGRO_KEY_INSERT:Int
Const ALLEGRO_KEY_DELETE:Int
Const ALLEGRO_KEY_HOME:Int
Const ALLEGRO_KEY_END:Int
Const ALLEGRO_KEY_PGUP:Int
Const ALLEGRO_KEY_PGDN:Int
Const ALLEGRO_KEY_LEFT:Int
Const ALLEGRO_KEY_RIGHT:Int
Const ALLEGRO_KEY_UP:Int
Const ALLEGRO_KEY_DOWN:Int
Const ALLEGRO_KEY_PAD_SLASH:Int
Const ALLEGRO_KEY_PAD_ASTERISK:Int
Const ALLEGRO_KEY_PAD_MINUS:Int
Const ALLEGRO_KEY_PAD_PLUS:Int
Const ALLEGRO_KEY_PAD_DELETE:Int
Const ALLEGRO_KEY_PAD_ENTER:Int
Const ALLEGRO_KEY_PRINTSCREEN:Int
Const ALLEGRO_KEY_PAUSE:Int
Const ALLEGRO_KEY_ABNT_C1:Int
Const ALLEGRO_KEY_YEN:Int
Const ALLEGRO_KEY_KANA:Int
Const ALLEGRO_KEY_CONVERT:Int
Const ALLEGRO_KEY_NOCONVERT:Int
Const ALLEGRO_KEY_AT:Int
Const ALLEGRO_KEY_CIRCUMFLEX:Int
Const ALLEGRO_KEY_COLON2:Int
Const ALLEGRO_KEY_KANJI:Int
Const ALLEGRO_KEY_PAD_EQUALS:Int
Const ALLEGRO_KEY_BACKQUOTE:Int
Const ALLEGRO_KEY_SEMICOLON2:Int
Const ALLEGRO_KEY_COMMAND:Int
Const ALLEGRO_KEY_BACK:Int
Const ALLEGRO_KEY_VOLUME_UP:Int
Const ALLEGRO_KEY_VOLUME_DOWN:Int
Const ALLEGRO_KEY_SEARCH:Int
Const ALLEGRO_KEY_DPAD_CENTER:Int
Const ALLEGRO_KEY_BUTTON_X:Int
Const ALLEGRO_KEY_BUTTON_Y:Int
Const ALLEGRO_KEY_DPAD_UP:Int
Const ALLEGRO_KEY_DPAD_DOWN:Int
Const ALLEGRO_KEY_DPAD_LEFT:Int
Const ALLEGRO_KEY_DPAD_RIGHT:Int
Const ALLEGRO_KEY_SELECT:Int
Const ALLEGRO_KEY_START:Int
Const ALLEGRO_KEY_BUTTON_L1:Int
Const ALLEGRO_KEY_BUTTON_R1:Int
Const ALLEGRO_KEY_BUTTON_L2:Int
Const ALLEGRO_KEY_BUTTON_R2:Int
Const ALLEGRO_KEY_BUTTON_A:Int
Const ALLEGRO_KEY_BUTTON_B:Int
Const ALLEGRO_KEY_THUMBL:Int
Const ALLEGRO_KEY_THUMBR:Int
Const ALLEGRO_KEY_UNKNOWN:Int
Const ALLEGRO_KEY_MODIFIERS:Int
Const ALLEGRO_KEY_LSHIFT:Int
Const ALLEGRO_KEY_RSHIFT:Int
Const ALLEGRO_KEY_LCTRL:Int
Const ALLEGRO_KEY_RCTRL:Int
Const ALLEGRO_KEY_ALT:Int
Const ALLEGRO_KEY_ALTGR:Int
Const ALLEGRO_KEY_LWIN:Int
Const ALLEGRO_KEY_RWIN:Int
Const ALLEGRO_KEY_MENU:Int
Const ALLEGRO_KEY_SCROLLLOCK:Int
Const ALLEGRO_KEY_NUMLOCK:Int
Const ALLEGRO_KEY_CAPSLOCK:Int
Const ALLEGRO_KEY_MAX:Int
Const ALLEGRO_KEYMOD_SHIFT:Int
Const ALLEGRO_KEYMOD_CTRL:Int
Const ALLEGRO_KEYMOD_ALT:Int
Const ALLEGRO_KEYMOD_LWIN:Int
Const ALLEGRO_KEYMOD_RWIN:Int
Const ALLEGRO_KEYMOD_MENU:Int
Const ALLEGRO_KEYMOD_ALTGR:Int
Const ALLEGRO_KEYMOD_COMMAND:Int
Const ALLEGRO_KEYMOD_SCROLLLOCK:Int
Const ALLEGRO_KEYMOD_NUMLOCK:Int
Const ALLEGRO_KEYMOD_CAPSLOCK:Int
Const ALLEGRO_KEYMOD_INALTSEQ:Int
Const ALLEGRO_KEYMOD_ACCENT1:Int
Const ALLEGRO_KEYMOD_ACCENT2:Int
Const ALLEGRO_KEYMOD_ACCENT3:Int
Const ALLEGRO_KEYMOD_ACCENT4:Int

'***** File: native/include\allegro5/keyboard.h *****

Struct ALLEGRO_KEYBOARD
End

Struct ALLEGRO_KEYBOARD_STATE
	Field display:ALLEGRO_DISPLAY Ptr
	Field __key_down__internal__:UInt Ptr
End
Function al_is_keyboard_installed:Bool(  )
Function al_install_keyboard:Bool(  )
Function al_uninstall_keyboard:Void(  )
Function al_set_keyboard_leds:Bool( leds:Int )
Function al_keycode_to_name:CString( keycode:Int )
Function al_get_keyboard_state:Void( ret_state:ALLEGRO_KEYBOARD_STATE Ptr )
Function al_key_down:Bool( ALLEGRO_KEYBOARD_STATE Ptr, keycode:Int )
Function al_get_keyboard_event_source:ALLEGRO_EVENT_SOURCE Ptr(  )
Global _al_three_finger_flag:Bool
Global _al_key_led_flag:Bool

'***** File: native/include\allegro5/mouse.h *****

Struct ALLEGRO_MOUSE
End

Struct ALLEGRO_MOUSE_STATE
	Field x:Int
	Field y:Int
	Field z:Int
	Field w:Int
	Field more_axes:Int Ptr
	Field buttons:Int
	Field pressure:Float
	Field display:ALLEGRO_DISPLAY Ptr
End
Function al_is_mouse_installed:Bool(  )
Function al_install_mouse:Bool(  )
Function al_uninstall_mouse:Void(  )
Function al_get_mouse_num_buttons:UInt(  )
Function al_get_mouse_num_axes:UInt(  )
Function al_set_mouse_xy:Bool( display:ALLEGRO_DISPLAY Ptr, x:Int, y:Int )
Function al_set_mouse_z:Bool( z:Int )
Function al_set_mouse_w:Bool( w:Int )
Function al_set_mouse_axis:Bool( axis:Int, value:Int )
Function al_get_mouse_state:Void( ret_state:ALLEGRO_MOUSE_STATE Ptr )
Function al_mouse_button_down:Bool( state:ALLEGRO_MOUSE_STATE Ptr, button:Int )
Function al_get_mouse_state_axis:Int( state:ALLEGRO_MOUSE_STATE Ptr, axis:Int )
Function al_get_mouse_cursor_position:Bool( ret_x:Int Ptr, ret_y:Int Ptr )
Function al_grab_mouse:Bool( display:ALLEGRO_DISPLAY Ptr )
Function al_ungrab_mouse:Bool(  )
Function al_set_mouse_wheel_precision:Void( precision:Int )
Function al_get_mouse_wheel_precision:Int(  )
Function al_get_mouse_event_source:ALLEGRO_EVENT_SOURCE Ptr(  )

'***** File: native/include\allegro5/touch_input.h *****

Struct ALLEGRO_TOUCH_INPUT
End

Struct ALLEGRO_TOUCH_STATE
	Field id:Int
	Field x:Float
	Field y:Float
	Field dx:Float
	Field dy:Float
	Field primary:Bool
	Field display:ALLEGRO_DISPLAY Ptr
End
Struct ALLEGRO_TOUCH_INPUT_STATE
	Field touches:ALLEGRO_TOUCH_STATE Ptr
End
Function al_is_touch_input_installed:Bool(  )
Function al_install_touch_input:Bool(  )
Function al_uninstall_touch_input:Void(  )
Function al_get_touch_input_state:Void( ret_state:ALLEGRO_TOUCH_INPUT_STATE Ptr )
Function al_get_touch_input_event_source:ALLEGRO_EVENT_SOURCE Ptr(  )

'***** File: native/include\allegro5/memory.h *****

Struct ALLEGRO_MEMORY_INTERFACE
	Field mi_malloc:Void Ptr( libc.size_t, Int, CString, CString )
	Field mi_free:Void( Void Ptr, Int, CString, CString )
	Field mi_realloc:Void Ptr( Void Ptr, libc.size_t, Int, CString, CString )
	Field mi_calloc:Void Ptr( libc.size_t, libc.size_t, Int, CString, CString )
End
Function al_set_memory_interface:Void( iface:ALLEGRO_MEMORY_INTERFACE Ptr )
Function al_malloc_with_context:Void Ptr( n:libc.size_t, line:Int, file:CString, func:CString )
Function al_free_with_context:Void( ptr_:Void Ptr, line:Int, file:CString, func:CString )
Function al_realloc_with_context:Void Ptr( ptr_:Void Ptr, n:libc.size_t, line:Int, file:CString, func:CString )
Function al_calloc_with_context:Void Ptr( count:libc.size_t, n:libc.size_t, line:Int, file:CString, func:CString )

'***** File: native/include\allegro5/monitor.h *****

Struct ALLEGRO_MONITOR_INFO
	Field x1:Int
	Field y1:Int
	Field x2:Int
	Field y2:Int
End
Const ALLEGRO_DEFAULT_DISPLAY_ADAPTER:Int
Function al_get_num_video_adapters:Int(  )
Function al_get_monitor_info:Bool( adapter:Int, info:ALLEGRO_MONITOR_INFO Ptr )

'***** File: native/include\allegro5/mouse_cursor.h *****

Enum ALLEGRO_SYSTEM_MOUSE_CURSOR
End
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_NONE:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_DEFAULT:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_ARROW:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_BUSY:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_QUESTION:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_EDIT:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_MOVE:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_N:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_W:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_S:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_E:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_NW:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_SW:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_SE:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_NE:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_PROGRESS:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_PRECISION:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_LINK:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_ALT_SELECT:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_SYSTEM_MOUSE_CURSOR_UNAVAILABLE:ALLEGRO_SYSTEM_MOUSE_CURSOR
Const ALLEGRO_NUM_SYSTEM_MOUSE_CURSORS:ALLEGRO_SYSTEM_MOUSE_CURSOR
Function al_create_mouse_cursor:ALLEGRO_MOUSE_CURSOR Ptr( sprite:ALLEGRO_BITMAP Ptr, xfocus:Int, yfocus:Int )
Function al_destroy_mouse_cursor:Void( ALLEGRO_MOUSE_CURSOR Ptr )
Function al_set_mouse_cursor:Bool( display:ALLEGRO_DISPLAY Ptr, cursor:ALLEGRO_MOUSE_CURSOR Ptr )
Function al_set_system_mouse_cursor:Bool( display:ALLEGRO_DISPLAY Ptr, cursor_id:ALLEGRO_SYSTEM_MOUSE_CURSOR )
Function al_show_mouse_cursor:Bool( display:ALLEGRO_DISPLAY Ptr )
Function al_hide_mouse_cursor:Bool( display:ALLEGRO_DISPLAY Ptr )

'***** File: native/include\allegro5/render_state.h *****

Enum ALLEGRO_RENDER_STATE
End
Const ALLEGRO_ALPHA_TEST:ALLEGRO_RENDER_STATE
Const ALLEGRO_WRITE_MASK:ALLEGRO_RENDER_STATE
Const ALLEGRO_DEPTH_TEST:ALLEGRO_RENDER_STATE
Const ALLEGRO_DEPTH_FUNCTION:ALLEGRO_RENDER_STATE
Const ALLEGRO_ALPHA_FUNCTION:ALLEGRO_RENDER_STATE
Const ALLEGRO_ALPHA_TEST_VALUE:ALLEGRO_RENDER_STATE
Enum ALLEGRO_RENDER_FUNCTION
End
Const ALLEGRO_RENDER_NEVER:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_ALWAYS:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_LESS:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_EQUAL:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_LESS_EQUAL:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_GREATER:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_NOT_EQUAL:ALLEGRO_RENDER_FUNCTION
Const ALLEGRO_RENDER_GREATER_EQUAL:ALLEGRO_RENDER_FUNCTION
Enum ALLEGRO_WRITE_MASK_FLAGS
End
Const ALLEGRO_MASK_RED:ALLEGRO_WRITE_MASK_FLAGS
Const ALLEGRO_MASK_GREEN:ALLEGRO_WRITE_MASK_FLAGS
Const ALLEGRO_MASK_BLUE:ALLEGRO_WRITE_MASK_FLAGS
Const ALLEGRO_MASK_ALPHA:ALLEGRO_WRITE_MASK_FLAGS
Const ALLEGRO_MASK_DEPTH:ALLEGRO_WRITE_MASK_FLAGS
Const ALLEGRO_MASK_RGB:ALLEGRO_WRITE_MASK_FLAGS
Const ALLEGRO_MASK_RGBA:ALLEGRO_WRITE_MASK_FLAGS
Function al_set_render_state:Void( state:ALLEGRO_RENDER_STATE, value:Int )

'***** File: native/include\allegro5/transformations.h *****

Struct ALLEGRO_TRANSFORM
	Field m:Float Ptr Ptr
End
Function al_use_transform:Void( trans:ALLEGRO_TRANSFORM Ptr )
Function al_use_projection_transform:Void( trans:ALLEGRO_TRANSFORM Ptr )
Function al_copy_transform:Void( dest:ALLEGRO_TRANSFORM Ptr, src:ALLEGRO_TRANSFORM Ptr )
Function al_identity_transform:Void( trans:ALLEGRO_TRANSFORM Ptr )
Function al_build_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, x:Float, y:Float, sx:Float, sy:Float, theta:Float )
Function al_build_camera_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, position_x:Float, position_y:Float, position_z:Float, look_x:Float, look_y:Float, look_z:Float, up_x:Float, up_y:Float, up_z:Float )
Function al_translate_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, x:Float, y:Float )
Function al_translate_transform_3d:Void( trans:ALLEGRO_TRANSFORM Ptr, x:Float, y:Float, z:Float )
Function al_rotate_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, theta:Float )
Function al_rotate_transform_3d:Void( trans:ALLEGRO_TRANSFORM Ptr, x:Float, y:Float, z:Float, angle:Float )
Function al_scale_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, sx:Float, sy:Float )
Function al_scale_transform_3d:Void( trans:ALLEGRO_TRANSFORM Ptr, sx:Float, sy:Float, sz:Float )
Function al_transform_coordinates:Void( trans:ALLEGRO_TRANSFORM Ptr, x:Float Ptr, y:Float Ptr )
Function al_transform_coordinates_3d:Void( trans:ALLEGRO_TRANSFORM Ptr, x:Float Ptr, y:Float Ptr, z:Float Ptr )
Function al_compose_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, other:ALLEGRO_TRANSFORM Ptr )
Function al_get_current_transform:ALLEGRO_TRANSFORM Ptr(  )
Function al_get_current_inverse_transform:ALLEGRO_TRANSFORM Ptr(  )
Function al_get_current_projection_transform:ALLEGRO_TRANSFORM Ptr(  )
Function al_invert_transform:Void( trans:ALLEGRO_TRANSFORM Ptr )
Function al_check_inverse:Int( trans:ALLEGRO_TRANSFORM Ptr, tol:Float )
Function al_orthographic_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, left:Float, top:Float, n:Float, right:Float, bottom:Float, f:Float )
Function al_perspective_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, left:Float, top:Float, n:Float, right:Float, bottom:Float, f:Float )
Function al_horizontal_shear_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, theta:Float )
Function al_vertical_shear_transform:Void( trans:ALLEGRO_TRANSFORM Ptr, theta:Float )

'***** File: native/include\allegro5/shader.h *****

Enum ALLEGRO_SHADER_TYPE
End
Const ALLEGRO_VERTEX_SHADER:ALLEGRO_SHADER_TYPE
Const ALLEGRO_PIXEL_SHADER:ALLEGRO_SHADER_TYPE
Enum ALLEGRO_SHADER_PLATFORM
End
Const ALLEGRO_SHADER_AUTO:ALLEGRO_SHADER_PLATFORM
Const ALLEGRO_SHADER_GLSL:ALLEGRO_SHADER_PLATFORM
Const ALLEGRO_SHADER_HLSL:ALLEGRO_SHADER_PLATFORM
Function al_create_shader:ALLEGRO_SHADER Ptr( platform:ALLEGRO_SHADER_PLATFORM )
Function al_attach_shader_source:Bool( shader:ALLEGRO_SHADER Ptr, type:ALLEGRO_SHADER_TYPE, source:CString )
Function al_attach_shader_source_file:Bool( shader:ALLEGRO_SHADER Ptr, type:ALLEGRO_SHADER_TYPE, filename:CString )
Function al_build_shader:Bool( shader:ALLEGRO_SHADER Ptr )
Function al_get_shader_log:CString( shader:ALLEGRO_SHADER Ptr )
Function al_get_shader_platform:ALLEGRO_SHADER_PLATFORM( shader:ALLEGRO_SHADER Ptr )
Function al_use_shader:Bool( shader:ALLEGRO_SHADER Ptr )
Function al_destroy_shader:Void( shader:ALLEGRO_SHADER Ptr )
Function al_set_shader_sampler:Bool( name:CString, bitmap:ALLEGRO_BITMAP Ptr, unit:Int )
Function al_set_shader_matrix:Bool( name:CString, matrix:ALLEGRO_TRANSFORM Ptr )
Function al_set_shader_int:Bool( name:CString, i:Int )
Function al_set_shader_float:Bool( name:CString, f:Float )
Function al_set_shader_int_vector:Bool( name:CString, num_components:Int, i:Int Ptr, num_elems:Int )
Function al_set_shader_float_vector:Bool( name:CString, num_components:Int, f:Float Ptr, num_elems:Int )
Function al_set_shader_bool:Bool( name:CString, b:Bool )
Function al_get_default_shader_source:CString( platform:ALLEGRO_SHADER_PLATFORM, type:ALLEGRO_SHADER_TYPE )

'***** File: native/include\allegro5/system.h *****

Function al_install_system:Bool( version:Int, atexit_ptr:Int( Void(  ) ) )
Function al_uninstall_system:Void(  )
Function al_is_system_installed:Bool(  )
Function al_get_system_driver:ALLEGRO_SYSTEM Ptr(  )
Function al_get_system_config:ALLEGRO_CONFIG Ptr(  )
Const ALLEGRO_RESOURCES_PATH:Int
Const ALLEGRO_TEMP_PATH:Int
Const ALLEGRO_USER_DATA_PATH:Int
Const ALLEGRO_USER_HOME_PATH:Int
Const ALLEGRO_USER_SETTINGS_PATH:Int
Const ALLEGRO_USER_DOCUMENTS_PATH:Int
Const ALLEGRO_EXENAME_PATH:Int
Const ALLEGRO_LAST_PATH:Int
Function al_get_standard_path:ALLEGRO_PATH Ptr( id:Int )
Function al_set_exe_name:Void( path:CString )
Function al_set_org_name:Void( org_name:CString )
Function al_set_app_name:Void( app_name:CString )
Function al_get_org_name:CString(  )
Function al_get_app_name:CString(  )
Function al_inhibit_screensaver:Bool( inhibit:Bool )

'***** File: native/include\allegro5/threads.h *****

Function al_create_thread:ALLEGRO_THREAD Ptr( proc:Void Ptr( ALLEGRO_THREAD Ptr, Void Ptr ), arg:Void Ptr )
Function al_start_thread:Void( outer:ALLEGRO_THREAD Ptr )
Function al_join_thread:Void( outer:ALLEGRO_THREAD Ptr, ret_value:Void Ptr Ptr )
Function al_set_thread_should_stop:Void( outer:ALLEGRO_THREAD Ptr )
Function al_get_thread_should_stop:Bool( outer:ALLEGRO_THREAD Ptr )
Function al_destroy_thread:Void( thread:ALLEGRO_THREAD Ptr )
Function al_run_detached_thread:Void( proc:Void Ptr( Void Ptr ), arg:Void Ptr )
Function al_create_mutex:ALLEGRO_MUTEX Ptr(  )
Function al_create_mutex_recursive:ALLEGRO_MUTEX Ptr(  )
Function al_lock_mutex:Void( mutex:ALLEGRO_MUTEX Ptr )
Function al_unlock_mutex:Void( mutex:ALLEGRO_MUTEX Ptr )
Function al_destroy_mutex:Void( mutex:ALLEGRO_MUTEX Ptr )
Function al_create_cond:ALLEGRO_COND Ptr(  )
Function al_destroy_cond:Void( cond:ALLEGRO_COND Ptr )
Function al_wait_cond:Void( cond:ALLEGRO_COND Ptr, mutex:ALLEGRO_MUTEX Ptr )
Function al_wait_cond_until:Int( cond:ALLEGRO_COND Ptr, mutex:ALLEGRO_MUTEX Ptr, timeout:ALLEGRO_TIMEOUT Ptr )
Function al_broadcast_cond:Void( cond:ALLEGRO_COND Ptr )
Function al_signal_cond:Void( cond:ALLEGRO_COND Ptr )

'***** File: native/include\allegro5/timer.h *****

Struct ALLEGRO_TIMER
End

Function al_create_timer:ALLEGRO_TIMER Ptr( speed_secs:Double )
Function al_destroy_timer:Void( timer:ALLEGRO_TIMER Ptr )
Function al_start_timer:Void( timer:ALLEGRO_TIMER Ptr )
Function al_stop_timer:Void( timer:ALLEGRO_TIMER Ptr )
Function al_resume_timer:Void( timer:ALLEGRO_TIMER Ptr )
Function al_get_timer_started:Bool( timer:ALLEGRO_TIMER Ptr )
Function al_get_timer_speed:Double( timer:ALLEGRO_TIMER Ptr )
Function al_set_timer_speed:Void( timer:ALLEGRO_TIMER Ptr, speed_secs:Double )
Function al_get_timer_count:Int( timer:ALLEGRO_TIMER Ptr  )
Function al_set_timer_count:Void( timer:ALLEGRO_TIMER Ptr, count:Int )
Function al_add_timer_count:Void( timer:ALLEGRO_TIMER Ptr, diff:Int )
Function al_get_timer_event_source:ALLEGRO_EVENT_SOURCE Ptr( timer:ALLEGRO_TIMER Ptr )

'***** File: native/include\allegro5/tls.h *****

Enum ALLEGRO_STATE_FLAGS
End
Const ALLEGRO_STATE_NEW_DISPLAY_PARAMETERS:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_NEW_BITMAP_PARAMETERS:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_DISPLAY:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_TARGET_BITMAP:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_BLENDER:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_NEW_FILE_INTERFACE:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_TRANSFORM:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_PROJECTION_TRANSFORM:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_BITMAP:ALLEGRO_STATE_FLAGS
Const ALLEGRO_STATE_ALL:ALLEGRO_STATE_FLAGS
Struct ALLEGRO_STATE
	Field _tls:libc.char_t Ptr
End
Function al_store_state:Void( state:ALLEGRO_STATE Ptr, flags:Int )
Function al_restore_state:Void( state:ALLEGRO_STATE Ptr )

'***** File: native/include\allegro5/platform/alwin.h *****

Function _WinMain:Int( _main:Void Ptr, hInst:Void Ptr, hPrev:Void Ptr, Cmd:libc.char_t Ptr, nShow:Int )
Global _al_joydrv_directx:ALLEGRO_JOYSTICK_DRIVER
Global _al_joydrv_xinput:ALLEGRO_JOYSTICK_DRIVER
Global _al_joydrv_windows_all:ALLEGRO_JOYSTICK_DRIVER
Global _al_hapdrv_directx:ALLEGRO_HAPTIC_DRIVER
Global _al_hapdrv_xinput:ALLEGRO_HAPTIC_DRIVER
Global _al_hapdrv_windows_all:ALLEGRO_HAPTIC_DRIVER

'***** File: native/include/allegro5/allegro_color.h *****

Function al_get_allegro_color_version:Int(  )
Function al_color_hsv_to_rgb:Void( hue:Float, saturation:Float, value:Float, red:Float Ptr, green:Float Ptr, blue:Float Ptr )
Function al_color_rgb_to_hsl:Void( red:Float, green:Float, blue:Float, hue:Float Ptr, saturation:Float Ptr, lightness:Float Ptr )
Function al_color_rgb_to_hsv:Void( red:Float, green:Float, blue:Float, hue:Float Ptr, saturation:Float Ptr, value:Float Ptr )
Function al_color_hsl_to_rgb:Void( hue:Float, saturation:Float, lightness:Float, red:Float Ptr, green:Float Ptr, blue:Float Ptr )
Function al_color_name_to_rgb:Bool( name:CString, r:Float Ptr, g:Float Ptr, b:Float Ptr )
Function al_color_rgb_to_name:CString( r:Float, g:Float, b:Float )
Function al_color_cmyk_to_rgb:Void( cyan:Float, magenta:Float, yellow:Float, key:Float, red:Float Ptr, green:Float Ptr, blue:Float Ptr )
Function al_color_rgb_to_cmyk:Void( red:Float, green:Float, blue:Float, cyan:Float Ptr, magenta:Float Ptr, yellow:Float Ptr, key:Float Ptr )
Function al_color_yuv_to_rgb:Void( y:Float, u:Float, v:Float, red:Float Ptr, green:Float Ptr, blue:Float Ptr )
Function al_color_rgb_to_yuv:Void( red:Float, green:Float, blue:Float, y:Float Ptr, u:Float Ptr, v:Float Ptr )
Function al_color_rgb_to_html:Void( red:Float, green:Float, blue:Float, string_:libc.char_t Ptr )
Function al_color_html_to_rgb:Bool( string_:CString, red:Float Ptr, green:Float Ptr, blue:Float Ptr )
Function al_color_yuv:ALLEGRO_COLOR( y:Float, u:Float, v:Float )
Function al_color_cmyk:ALLEGRO_COLOR( c:Float, m:Float, y:Float, k:Float )
Function al_color_hsl:ALLEGRO_COLOR( h:Float, s:Float, l:Float )
Function al_color_hsv:ALLEGRO_COLOR( h:Float, s:Float, v:Float )
Function al_color_name:ALLEGRO_COLOR( name:CString )
Function al_color_html:ALLEGRO_COLOR( string_:CString )
Const ALLEGRO_NO_KERNING:Int
Const ALLEGRO_ALIGN_LEFT:Int
Const ALLEGRO_ALIGN_CENTRE:Int
Const ALLEGRO_ALIGN_CENTER:Int
Const ALLEGRO_ALIGN_RIGHT:Int
Const ALLEGRO_ALIGN_INTEGER:Int

'***** File: native/include\allegro5/allegro_font.h *****

Function al_register_font_loader:Bool( ext:CString, load:ALLEGRO_FONT Ptr( CString, Int, Int ) )
Function al_load_bitmap_font:ALLEGRO_FONT Ptr( filename:CString )
Function al_load_bitmap_font_flags:ALLEGRO_FONT Ptr( filename:CString, flags:Int )
Function al_load_font:ALLEGRO_FONT Ptr( filename:CString, size:Int, flags:Int )
Function al_grab_font_from_bitmap:ALLEGRO_FONT Ptr( bmp:ALLEGRO_BITMAP Ptr, n:Int, ranges:Int Ptr )
Function al_create_builtin_font:ALLEGRO_FONT Ptr(  )
Function al_draw_ustr:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, flags:Int, ustr:ALLEGRO_USTR Ptr )
Function al_draw_text:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, flags:Int, text:CString )
Function al_draw_justified_text:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x1:Float, x2:Float, y:Float, diff:Float, flags:Int, text:CString )
Function al_draw_justified_ustr:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x1:Float, x2:Float, y:Float, diff:Float, flags:Int, text:ALLEGRO_USTR Ptr )
Function al_draw_textf:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, flags:Int, format:CString )
Function al_draw_justified_textf:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x1:Float, x2:Float, y:Float, diff:Float, flags:Int, format:CString )
Function al_get_text_width:Int( f:ALLEGRO_FONT Ptr, str:CString )
Function al_get_ustr_width:Int( f:ALLEGRO_FONT Ptr, ustr:ALLEGRO_USTR Ptr )
Function al_get_font_line_height:Int( f:ALLEGRO_FONT Ptr )
Function al_get_font_ascent:Int( f:ALLEGRO_FONT Ptr )
Function al_get_font_descent:Int( f:ALLEGRO_FONT Ptr )
Function al_destroy_font:Void( f:ALLEGRO_FONT Ptr )
Function al_get_ustr_dimensions:Void( f:ALLEGRO_FONT Ptr, text:ALLEGRO_USTR Ptr, bbx:Int Ptr, bby:Int Ptr, bbw:Int Ptr, bbh:Int Ptr )
Function al_get_text_dimensions:Void( f:ALLEGRO_FONT Ptr, text:CString, bbx:Int Ptr, bby:Int Ptr, bbw:Int Ptr, bbh:Int Ptr )
Function al_init_font_addon:Bool(  )
Function al_shutdown_font_addon:Void(  )
Function al_get_allegro_font_version:Int(  )
Function al_get_font_ranges:Int( font:ALLEGRO_FONT Ptr, ranges_count:Int, ranges:Int Ptr )
Function al_draw_glyph:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, codepoint:Int )
Function al_get_glyph_width:Int( f:ALLEGRO_FONT Ptr, codepoint:Int )
Function al_get_glyph_dimensions:Bool( f:ALLEGRO_FONT Ptr, codepoint:Int, bbx:Int Ptr, bby:Int Ptr, bbw:Int Ptr, bbh:Int Ptr )
Function al_get_glyph_advance:Int( f:ALLEGRO_FONT Ptr, codepoint1:Int, codepoint2:Int )
Function al_draw_multiline_text:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, max_width:Float, line_height:Float, flags:Int, text:CString )
Function al_draw_multiline_textf:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, max_width:Float, line_height:Float, flags:Int, format:CString )
Function al_draw_multiline_ustr:Void( font:ALLEGRO_FONT Ptr, color:ALLEGRO_COLOR, x:Float, y:Float, max_width:Float, line_height:Float, flags:Int, text:ALLEGRO_USTR Ptr )
Function al_do_multiline_text:Void( font:ALLEGRO_FONT Ptr, max_width:Float, text:CString, cb:Bool( Int, CString, Int, Void Ptr ), extra:Void Ptr )
Function al_do_multiline_ustr:Void( font:ALLEGRO_FONT Ptr, max_width:Float, ustr:ALLEGRO_USTR Ptr, cb:Bool( Int, ALLEGRO_USTR Ptr, Void Ptr ), extra:Void Ptr )
Function al_set_fallback_font:Void( font:ALLEGRO_FONT Ptr, fallback:ALLEGRO_FONT Ptr )
Function al_get_fallback_font:ALLEGRO_FONT Ptr( font:ALLEGRO_FONT Ptr )

'***** File: native/include/allegro5/allegro_ttf.h *****

Function al_load_ttf_font:ALLEGRO_FONT Ptr( filename:CString, size:Int, flags:Int )
Function al_load_ttf_font_f:ALLEGRO_FONT Ptr( file:ALLEGRO_FILE Ptr, filename:CString, size:Int, flags:Int )
Function al_load_ttf_font_stretch:ALLEGRO_FONT Ptr( filename:CString, w:Int, h:Int, flags:Int )
Function al_load_ttf_font_stretch_f:ALLEGRO_FONT Ptr( file:ALLEGRO_FILE Ptr, filename:CString, w:Int, h:Int, flags:Int )
Function al_init_ttf_addon:Bool(  )
Function al_shutdown_ttf_addon:Void(  )
Function al_get_allegro_ttf_version:Int(  )

'***** File: native/include/allegro5/allegro_primitives.h *****

Enum ALLEGRO_PRIM_TYPE
End
Const ALLEGRO_PRIM_LINE_LIST:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_LINE_STRIP:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_LINE_LOOP:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_TRIANGLE_LIST:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_TRIANGLE_STRIP:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_TRIANGLE_FAN:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_POINT_LIST:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_NUM_TYPES:ALLEGRO_PRIM_TYPE
Const ALLEGRO_PRIM_MAX_USER_ATTR:Int
Enum ALLEGRO_PRIM_ATTR
End
Const ALLEGRO_PRIM_POSITION:ALLEGRO_PRIM_ATTR
Const ALLEGRO_PRIM_COLOR_ATTR:ALLEGRO_PRIM_ATTR
Const ALLEGRO_PRIM_TEX_COORD:ALLEGRO_PRIM_ATTR
Const ALLEGRO_PRIM_TEX_COORD_PIXEL:ALLEGRO_PRIM_ATTR
Const ALLEGRO_PRIM_USER_ATTR:ALLEGRO_PRIM_ATTR
Const ALLEGRO_PRIM_ATTR_NUM:ALLEGRO_PRIM_ATTR
Enum ALLEGRO_PRIM_STORAGE
End
Const ALLEGRO_PRIM_FLOAT_2:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_FLOAT_3:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_SHORT_2:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_FLOAT_1:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_FLOAT_4:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_UBYTE_4:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_SHORT_4:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_NORMALIZED_UBYTE_4:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_NORMALIZED_SHORT_2:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_NORMALIZED_SHORT_4:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_NORMALIZED_USHORT_2:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_NORMALIZED_USHORT_4:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_HALF_FLOAT_2:ALLEGRO_PRIM_STORAGE
Const ALLEGRO_PRIM_HALF_FLOAT_4:ALLEGRO_PRIM_STORAGE
Enum ALLEGRO_LINE_JOIN
End
Const ALLEGRO_LINE_JOIN_NONE:ALLEGRO_LINE_JOIN
Const ALLEGRO_LINE_JOIN_BEVEL:ALLEGRO_LINE_JOIN
Const ALLEGRO_LINE_JOIN_ROUND:ALLEGRO_LINE_JOIN
Const ALLEGRO_LINE_JOIN_MITER:ALLEGRO_LINE_JOIN
Const ALLEGRO_LINE_JOIN_MITRE:ALLEGRO_LINE_JOIN
Enum ALLEGRO_LINE_CAP
End
Const ALLEGRO_LINE_CAP_NONE:ALLEGRO_LINE_CAP
Const ALLEGRO_LINE_CAP_SQUARE:ALLEGRO_LINE_CAP
Const ALLEGRO_LINE_CAP_ROUND:ALLEGRO_LINE_CAP
Const ALLEGRO_LINE_CAP_TRIANGLE:ALLEGRO_LINE_CAP
Const ALLEGRO_LINE_CAP_CLOSED:ALLEGRO_LINE_CAP
Enum ALLEGRO_PRIM_BUFFER_FLAGS
End
Const ALLEGRO_PRIM_BUFFER_STREAM:ALLEGRO_PRIM_BUFFER_FLAGS
Const ALLEGRO_PRIM_BUFFER_STATIC:ALLEGRO_PRIM_BUFFER_FLAGS
Const ALLEGRO_PRIM_BUFFER_DYNAMIC:ALLEGRO_PRIM_BUFFER_FLAGS
Const ALLEGRO_PRIM_BUFFER_READWRITE:ALLEGRO_PRIM_BUFFER_FLAGS
Struct ALLEGRO_VERTEX_ELEMENT
	Field attribute:Int
	Field storage:Int
	Field offset:Int
End
Struct ALLEGRO_VERTEX
	Field x:Float
	Field y:Float
	Field z:Float
	Field u:Float
	Field v:Float
	Field color:ALLEGRO_COLOR
End
Function al_get_allegro_primitives_version:Int(  )
Function al_init_primitives_addon:Bool(  )
Function al_shutdown_primitives_addon:Void(  )
Function al_draw_prim:Int( vtxs:Void Ptr, decl:ALLEGRO_VERTEX_DECL Ptr, texture:ALLEGRO_BITMAP Ptr, start:Int, end_:Int, type:Int )
Function al_draw_indexed_prim:Int( vtxs:Void Ptr, decl:ALLEGRO_VERTEX_DECL Ptr, texture:ALLEGRO_BITMAP Ptr, indices:Int Ptr, num_vtx:Int, type:Int )
Function al_draw_vertex_buffer:Int( vertex_buffer:ALLEGRO_VERTEX_BUFFER Ptr, texture:ALLEGRO_BITMAP Ptr, start:Int, end_:Int, type:Int )
Function al_draw_indexed_buffer:Int( vertex_buffer:ALLEGRO_VERTEX_BUFFER Ptr, texture:ALLEGRO_BITMAP Ptr, index_buffer:ALLEGRO_INDEX_BUFFER Ptr, start:Int, end_:Int, type:Int )
Function al_create_vertex_decl:ALLEGRO_VERTEX_DECL Ptr( elements:ALLEGRO_VERTEX_ELEMENT Ptr, stride:Int )
Function al_destroy_vertex_decl:Void( decl:ALLEGRO_VERTEX_DECL Ptr )
Function al_create_vertex_buffer:ALLEGRO_VERTEX_BUFFER Ptr( decl:ALLEGRO_VERTEX_DECL Ptr, initial_data:Void Ptr, num_vertices:Int, flags:Int )
Function al_destroy_vertex_buffer:Void( buffer:ALLEGRO_VERTEX_BUFFER Ptr )
Function al_lock_vertex_buffer:Void Ptr( buffer:ALLEGRO_VERTEX_BUFFER Ptr, offset:Int, length:Int, flags:Int )
Function al_unlock_vertex_buffer:Void( buffer:ALLEGRO_VERTEX_BUFFER Ptr )
Function al_get_vertex_buffer_size:Int( buffer:ALLEGRO_VERTEX_BUFFER Ptr )
Function al_create_index_buffer:ALLEGRO_INDEX_BUFFER Ptr( index_size:Int, initial_data:Void Ptr, num_indices:Int, flags:Int )
Function al_destroy_index_buffer:Void( buffer:ALLEGRO_INDEX_BUFFER Ptr )
Function al_lock_index_buffer:Void Ptr( buffer:ALLEGRO_INDEX_BUFFER Ptr, offset:Int, length:Int, flags:Int )
Function al_unlock_index_buffer:Void( buffer:ALLEGRO_INDEX_BUFFER Ptr )
Function al_get_index_buffer_size:Int( buffer:ALLEGRO_INDEX_BUFFER Ptr )
Function al_triangulate_polygon:Bool( vertices:Float Ptr, vertex_stride:libc.size_t, vertex_counts:Int Ptr, emit_triangle:Void( Int, Int, Int, Void Ptr ), userdata:Void Ptr )
Function al_draw_soft_triangle:Void( v1:ALLEGRO_VERTEX Ptr, v2:ALLEGRO_VERTEX Ptr, v3:ALLEGRO_VERTEX Ptr, state:libc.uintptr_t, init:Void( libc.uintptr_t, ALLEGRO_VERTEX Ptr, ALLEGRO_VERTEX Ptr, ALLEGRO_VERTEX Ptr ), first:Void( libc.uintptr_t, Int, Int, Int, Int ), step_:Void( libc.uintptr_t, Int ), draw:Void( libc.uintptr_t, Int, Int, Int ) )
Function al_draw_soft_line:Void( v1:ALLEGRO_VERTEX Ptr, v2:ALLEGRO_VERTEX Ptr, state:libc.uintptr_t, first:Void( libc.uintptr_t, Int, Int, ALLEGRO_VERTEX Ptr, ALLEGRO_VERTEX Ptr ), step_:Void( libc.uintptr_t, Int ), draw:Void( libc.uintptr_t, Int, Int ) )
Function al_draw_line:Void( x1:Float, y1:Float, x2:Float, y2:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_triangle:Void( x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_rectangle:Void( x1:Float, y1:Float, x2:Float, y2:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_rounded_rectangle:Void( x1:Float, y1:Float, x2:Float, y2:Float, rx:Float, ry:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_calculate_arc:Void( dest:Float Ptr, stride:Int, cx:Float, cy:Float, rx:Float, ry:Float, start_theta:Float, delta_theta:Float, thickness:Float, num_points:Int )
Function al_draw_circle:Void( cx:Float, cy:Float, r:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_ellipse:Void( cx:Float, cy:Float, rx:Float, ry:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_arc:Void( cx:Float, cy:Float, r:Float, start_theta:Float, delta_theta:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_elliptical_arc:Void( cx:Float, cy:Float, rx:Float, ry:Float, start_theta:Float, delta_theta:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_draw_pieslice:Void( cx:Float, cy:Float, r:Float, start_theta:Float, delta_theta:Float, color:ALLEGRO_COLOR, thickness:Float )
Function al_calculate_spline:Void( dest:Float Ptr, stride:Int, points:Float Ptr, thickness:Float, num_segments:Int )
Function al_draw_spline:Void( points:Float Ptr, color:ALLEGRO_COLOR, thickness:Float )
Function al_calculate_ribbon:Void( dest:Float Ptr, dest_stride:Int, points:Float Ptr, points_stride:Int, thickness:Float, num_segments:Int )
Function al_draw_ribbon:Void( points:Float Ptr, points_stride:Int, color:ALLEGRO_COLOR, thickness:Float, num_segments:Int )
Function al_draw_filled_triangle:Void( x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, color:ALLEGRO_COLOR )
Function al_draw_filled_rectangle:Void( x1:Float, y1:Float, x2:Float, y2:Float, color:ALLEGRO_COLOR )
Function al_draw_filled_ellipse:Void( cx:Float, cy:Float, rx:Float, ry:Float, color:ALLEGRO_COLOR )
Function al_draw_filled_circle:Void( cx:Float, cy:Float, r:Float, color:ALLEGRO_COLOR )
Function al_draw_filled_pieslice:Void( cx:Float, cy:Float, r:Float, start_theta:Float, delta_theta:Float, color:ALLEGRO_COLOR )
Function al_draw_filled_rounded_rectangle:Void( x1:Float, y1:Float, x2:Float, y2:Float, rx:Float, ry:Float, color:ALLEGRO_COLOR )
Function al_draw_polyline:Void( vertices:Float Ptr, vertex_stride:Int, vertex_count:Int, join_style:Int, cap_style:Int, color:ALLEGRO_COLOR, thickness:Float, miter_limit:Float )
Function al_draw_polygon:Void( vertices:Float Ptr, vertex_count:Int, join_style:Int, color:ALLEGRO_COLOR, thickness:Float, miter_limit:Float )
Function al_draw_filled_polygon:Void( vertices:Float Ptr, vertex_count:Int, color:ALLEGRO_COLOR )
Function al_draw_filled_polygon_with_holes:Void( vertices:Float Ptr, vertex_counts:Int Ptr, color:ALLEGRO_COLOR )

'***** File: native/include/allegro5/allegro_image.h *****

Function al_init_image_addon:Bool(  )
Function al_shutdown_image_addon:Void(  )
Function al_get_allegro_image_version:Int(  )

'***** File: native/include/allegro5/allegro_native_dialog.h *****

Struct ALLEGRO_MENU_INFO
	Field caption:CString
	Field id:Int
	Field flags:Int
	Field icon:ALLEGRO_BITMAP Ptr
End
Function al_init_native_dialog_addon:Bool(  )
Function al_shutdown_native_dialog_addon:Void(  )
Function al_create_native_file_dialog:ALLEGRO_FILECHOOSER Ptr( initial_path:CString, title:CString, patterns:CString, mode:Int )
Function al_show_native_file_dialog:Bool( display:ALLEGRO_DISPLAY Ptr, dialog:ALLEGRO_FILECHOOSER Ptr )
Function al_get_native_file_dialog_count:Int( dialog:ALLEGRO_FILECHOOSER Ptr )
Function al_get_native_file_dialog_path:CString( dialog:ALLEGRO_FILECHOOSER Ptr, index:libc.size_t )
Function al_destroy_native_file_dialog:Void( dialog:ALLEGRO_FILECHOOSER Ptr )
Function al_show_native_message_box:Int( display:ALLEGRO_DISPLAY Ptr, title:CString, heading:CString, text:CString, buttons:CString, flags:Int )
Function al_open_native_text_log:ALLEGRO_TEXTLOG Ptr( title:CString, flags:Int )
Function al_close_native_text_log:Void( textlog:ALLEGRO_TEXTLOG Ptr )
Function al_append_native_text_log:Void( textlog:ALLEGRO_TEXTLOG Ptr, format:CString )
Function al_get_native_text_log_event_source:ALLEGRO_EVENT_SOURCE Ptr( textlog:ALLEGRO_TEXTLOG Ptr )
Function al_create_menu:ALLEGRO_MENU Ptr(  )
Function al_create_popup_menu:ALLEGRO_MENU Ptr(  )
Function al_build_menu:ALLEGRO_MENU Ptr( info:ALLEGRO_MENU_INFO Ptr )
Function al_append_menu_item:Int( parent:ALLEGRO_MENU Ptr, title:CString, id:Int, flags:Int, icon:ALLEGRO_BITMAP Ptr, submenu:ALLEGRO_MENU Ptr )
Function al_insert_menu_item:Int( parent:ALLEGRO_MENU Ptr, pos:Int, title:CString, id:Int, flags:Int, icon:ALLEGRO_BITMAP Ptr, submenu:ALLEGRO_MENU Ptr )
Function al_remove_menu_item:Bool( menu:ALLEGRO_MENU Ptr, pos:Int )
Function al_clone_menu:ALLEGRO_MENU Ptr( menu:ALLEGRO_MENU Ptr )
Function al_clone_menu_for_popup:ALLEGRO_MENU Ptr( menu:ALLEGRO_MENU Ptr )
Function al_destroy_menu:Void( menu:ALLEGRO_MENU Ptr )
Function al_get_menu_item_caption:CString( menu:ALLEGRO_MENU Ptr, pos:Int )
Function al_set_menu_item_caption:Void( menu:ALLEGRO_MENU Ptr, pos:Int, caption:CString )
Function al_get_menu_item_flags:Int( menu:ALLEGRO_MENU Ptr, pos:Int )
Function al_set_menu_item_flags:Void( menu:ALLEGRO_MENU Ptr, pos:Int, flags:Int )
Function al_get_menu_item_icon:ALLEGRO_BITMAP Ptr( menu:ALLEGRO_MENU Ptr, pos:Int )
Function al_set_menu_item_icon:Void( menu:ALLEGRO_MENU Ptr, pos:Int, icon:ALLEGRO_BITMAP Ptr )
Function al_find_menu:ALLEGRO_MENU Ptr( haystack:ALLEGRO_MENU Ptr, id:Int )
Function al_find_menu_item:Bool( haystack:ALLEGRO_MENU Ptr, id:Int, menu:ALLEGRO_MENU Ptr Ptr, index:Int Ptr )
Function al_get_default_menu_event_source:ALLEGRO_EVENT_SOURCE Ptr(  )
Function al_enable_menu_event_source:ALLEGRO_EVENT_SOURCE Ptr( menu:ALLEGRO_MENU Ptr )
Function al_disable_menu_event_source:Void( menu:ALLEGRO_MENU Ptr )
Function al_get_display_menu:ALLEGRO_MENU Ptr( display:ALLEGRO_DISPLAY Ptr )
Function al_set_display_menu:Bool( display:ALLEGRO_DISPLAY Ptr, menu:ALLEGRO_MENU Ptr )
Function al_popup_menu:Bool( popup:ALLEGRO_MENU Ptr, display:ALLEGRO_DISPLAY Ptr )
Function al_remove_display_menu:ALLEGRO_MENU Ptr( display:ALLEGRO_DISPLAY Ptr )
Function al_get_allegro_native_dialog_version:Int(  )
Const ALLEGRO_FILECHOOSER_FILE_MUST_EXIST:Int
Const ALLEGRO_FILECHOOSER_SAVE:Int
Const ALLEGRO_FILECHOOSER_FOLDER:Int
Const ALLEGRO_FILECHOOSER_PICTURES:Int
Const ALLEGRO_FILECHOOSER_SHOW_HIDDEN:Int
Const ALLEGRO_FILECHOOSER_MULTIPLE:Int
Const ALLEGRO_MESSAGEBOX_WARN:Int
Const ALLEGRO_MESSAGEBOX_ERROR:Int
Const ALLEGRO_MESSAGEBOX_OK_CANCEL:Int
Const ALLEGRO_MESSAGEBOX_YES_NO:Int
Const ALLEGRO_MESSAGEBOX_QUESTION:Int
Const ALLEGRO_TEXTLOG_NO_CLOSE:Int
Const ALLEGRO_TEXTLOG_MONOSPACE:Int
Const ALLEGRO_EVENT_NATIVE_DIALOG_CLOSE:Int
Const ALLEGRO_EVENT_MENU_CLICK:Int
Const ALLEGRO_MENU_ITEM_ENABLED:Int
Const ALLEGRO_MENU_ITEM_CHECKBOX:Int
Const ALLEGRO_MENU_ITEM_CHECKED:Int
Const ALLEGRO_MENU_ITEM_DISABLED:Int

'***** File: native/include\allegro5/allegro_audio.h *****

Enum ALLEGRO_AUDIO_DEPTH
End
Const ALLEGRO_AUDIO_DEPTH_INT8:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_INT16:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_INT24:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_FLOAT32:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_UNSIGNED:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_UINT8:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_UINT16:ALLEGRO_AUDIO_DEPTH
Const ALLEGRO_AUDIO_DEPTH_UINT24:ALLEGRO_AUDIO_DEPTH
Enum ALLEGRO_CHANNEL_CONF
End
Const ALLEGRO_CHANNEL_CONF_1:ALLEGRO_CHANNEL_CONF
Const ALLEGRO_CHANNEL_CONF_2:ALLEGRO_CHANNEL_CONF
Const ALLEGRO_CHANNEL_CONF_3:ALLEGRO_CHANNEL_CONF
Const ALLEGRO_CHANNEL_CONF_4:ALLEGRO_CHANNEL_CONF
Const ALLEGRO_CHANNEL_CONF_5_1:ALLEGRO_CHANNEL_CONF
Const ALLEGRO_CHANNEL_CONF_6_1:ALLEGRO_CHANNEL_CONF
Const ALLEGRO_CHANNEL_CONF_7_1:ALLEGRO_CHANNEL_CONF
Enum ALLEGRO_PLAYMODE
End
Const ALLEGRO_PLAYMODE_ONCE:ALLEGRO_PLAYMODE
Const ALLEGRO_PLAYMODE_LOOP:ALLEGRO_PLAYMODE
Const ALLEGRO_PLAYMODE_BIDIR:ALLEGRO_PLAYMODE
Const _ALLEGRO_PLAYMODE_STREAM_ONCE:ALLEGRO_PLAYMODE
Const _ALLEGRO_PLAYMODE_STREAM_ONEDIR:ALLEGRO_PLAYMODE
Enum ALLEGRO_MIXER_QUALITY
End
Const ALLEGRO_MIXER_QUALITY_POINT:ALLEGRO_MIXER_QUALITY
Const ALLEGRO_MIXER_QUALITY_LINEAR:ALLEGRO_MIXER_QUALITY
Const ALLEGRO_MIXER_QUALITY_CUBIC:ALLEGRO_MIXER_QUALITY
Struct ALLEGRO_SAMPLE_ID
	Field _index:Int
	Field _id:Int
End
Function al_create_sample:ALLEGRO_SAMPLE Ptr( buf:Void Ptr, samples:UInt, freq:UInt, depth:ALLEGRO_AUDIO_DEPTH, chan_conf:ALLEGRO_CHANNEL_CONF, free_buf:Bool )
Function al_destroy_sample:Void( spl:ALLEGRO_SAMPLE Ptr )
Function al_create_sample_instance:ALLEGRO_SAMPLE_INSTANCE Ptr( data:ALLEGRO_SAMPLE Ptr )
Function al_destroy_sample_instance:Void( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_frequency:UInt( spl:ALLEGRO_SAMPLE Ptr )
Function al_get_sample_length:UInt( spl:ALLEGRO_SAMPLE Ptr )
Function al_get_sample_depth:ALLEGRO_AUDIO_DEPTH( spl:ALLEGRO_SAMPLE Ptr )
Function al_get_sample_channels:ALLEGRO_CHANNEL_CONF( spl:ALLEGRO_SAMPLE Ptr )
Function al_get_sample_data:Void Ptr( spl:ALLEGRO_SAMPLE Ptr )
Function al_get_sample_instance_frequency:UInt( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_length:UInt( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_position:UInt( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_speed:Float( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_gain:Float( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_pan:Float( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_time:Float( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_depth:ALLEGRO_AUDIO_DEPTH( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_channels:ALLEGRO_CHANNEL_CONF( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_playmode:ALLEGRO_PLAYMODE( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_playing:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_get_sample_instance_attached:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_set_sample_instance_position:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:UInt )
Function al_set_sample_instance_length:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:UInt )
Function al_set_sample_instance_speed:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:Float )
Function al_set_sample_instance_gain:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:Float )
Function al_set_sample_instance_pan:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:Float )
Function al_set_sample_instance_playmode:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:ALLEGRO_PLAYMODE )
Function al_set_sample_instance_playing:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, val:Bool )
Function al_detach_sample_instance:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_set_sample:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr, data:ALLEGRO_SAMPLE Ptr )
Function al_get_sample:ALLEGRO_SAMPLE Ptr( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_play_sample_instance:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_stop_sample_instance:Bool( spl:ALLEGRO_SAMPLE_INSTANCE Ptr )
Function al_create_audio_stream:ALLEGRO_AUDIO_STREAM Ptr( buffer_count:libc.size_t, samples:UInt, freq:UInt, depth:ALLEGRO_AUDIO_DEPTH, chan_conf:ALLEGRO_CHANNEL_CONF )
Function al_destroy_audio_stream:Void( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_drain_audio_stream:Void( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_frequency:UInt( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_length:UInt( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_fragments:UInt( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_available_audio_stream_fragments:UInt( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_speed:Float( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_gain:Float( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_pan:Float( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_channels:ALLEGRO_CHANNEL_CONF( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_depth:ALLEGRO_AUDIO_DEPTH( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_playmode:ALLEGRO_PLAYMODE( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_playing:Bool( spl:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_attached:Bool( spl:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_played_samples:Int(  )
Function al_get_audio_stream_fragment:Void Ptr( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_set_audio_stream_speed:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, val:Float )
Function al_set_audio_stream_gain:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, val:Float )
Function al_set_audio_stream_pan:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, val:Float )
Function al_set_audio_stream_playmode:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, val:ALLEGRO_PLAYMODE )
Function al_set_audio_stream_playing:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, val:Bool )
Function al_detach_audio_stream:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_set_audio_stream_fragment:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, val:Void Ptr )
Function al_rewind_audio_stream:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_seek_audio_stream_secs:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, time:Double )
Function al_get_audio_stream_position_secs:Double( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_get_audio_stream_length_secs:Double( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_set_audio_stream_loop_secs:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, start:Double, end_:Double )
Function al_get_audio_stream_event_source:ALLEGRO_EVENT_SOURCE Ptr( stream:ALLEGRO_AUDIO_STREAM Ptr )
Function al_create_mixer:ALLEGRO_MIXER Ptr( freq:UInt, depth:ALLEGRO_AUDIO_DEPTH, chan_conf:ALLEGRO_CHANNEL_CONF )
Function al_destroy_mixer:Void( mixer:ALLEGRO_MIXER Ptr )
Function al_attach_sample_instance_to_mixer:Bool( stream:ALLEGRO_SAMPLE_INSTANCE Ptr, mixer:ALLEGRO_MIXER Ptr )
Function al_attach_audio_stream_to_mixer:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, mixer:ALLEGRO_MIXER Ptr )
Function al_attach_mixer_to_mixer:Bool( stream:ALLEGRO_MIXER Ptr, mixer:ALLEGRO_MIXER Ptr )
Function al_set_mixer_postprocess_callback:Bool( mixer:ALLEGRO_MIXER Ptr, cb:Void( Void Ptr, UInt, Void Ptr ), data:Void Ptr )
Function al_get_mixer_frequency:UInt( mixer:ALLEGRO_MIXER Ptr )
Function al_get_mixer_channels:ALLEGRO_CHANNEL_CONF( mixer:ALLEGRO_MIXER Ptr )
Function al_get_mixer_depth:ALLEGRO_AUDIO_DEPTH( mixer:ALLEGRO_MIXER Ptr )
Function al_get_mixer_quality:ALLEGRO_MIXER_QUALITY( mixer:ALLEGRO_MIXER Ptr )
Function al_get_mixer_gain:Float( mixer:ALLEGRO_MIXER Ptr )
Function al_get_mixer_playing:Bool( mixer:ALLEGRO_MIXER Ptr )
Function al_get_mixer_attached:Bool( mixer:ALLEGRO_MIXER Ptr )
Function al_set_mixer_frequency:Bool( mixer:ALLEGRO_MIXER Ptr, val:UInt )
Function al_set_mixer_quality:Bool( mixer:ALLEGRO_MIXER Ptr, val:ALLEGRO_MIXER_QUALITY )
Function al_set_mixer_gain:Bool( mixer:ALLEGRO_MIXER Ptr, gain:Float )
Function al_set_mixer_playing:Bool( mixer:ALLEGRO_MIXER Ptr, val:Bool )
Function al_detach_mixer:Bool( mixer:ALLEGRO_MIXER Ptr )
Function al_create_voice:ALLEGRO_VOICE Ptr( freq:UInt, depth:ALLEGRO_AUDIO_DEPTH, chan_conf:ALLEGRO_CHANNEL_CONF )
Function al_destroy_voice:Void( voice:ALLEGRO_VOICE Ptr )
Function al_attach_sample_instance_to_voice:Bool( stream:ALLEGRO_SAMPLE_INSTANCE Ptr, voice:ALLEGRO_VOICE Ptr )
Function al_attach_audio_stream_to_voice:Bool( stream:ALLEGRO_AUDIO_STREAM Ptr, voice:ALLEGRO_VOICE Ptr )
Function al_attach_mixer_to_voice:Bool( mixer:ALLEGRO_MIXER Ptr, voice:ALLEGRO_VOICE Ptr )
Function al_detach_voice:Void( voice:ALLEGRO_VOICE Ptr )
Function al_get_voice_frequency:UInt( voice:ALLEGRO_VOICE Ptr )
Function al_get_voice_position:UInt( voice:ALLEGRO_VOICE Ptr )
Function al_get_voice_channels:ALLEGRO_CHANNEL_CONF( voice:ALLEGRO_VOICE Ptr )
Function al_get_voice_depth:ALLEGRO_AUDIO_DEPTH( voice:ALLEGRO_VOICE Ptr )
Function al_get_voice_playing:Bool( voice:ALLEGRO_VOICE Ptr )
Function al_set_voice_position:Bool( voice:ALLEGRO_VOICE Ptr, val:UInt )
Function al_set_voice_playing:Bool( voice:ALLEGRO_VOICE Ptr, val:Bool )
Function al_install_audio:Bool(  )
Function al_uninstall_audio:Void(  )
Function al_is_audio_installed:Bool(  )
Function al_get_allegro_audio_version:Int(  )
Function al_get_channel_count:libc.size_t( conf:ALLEGRO_CHANNEL_CONF )
Function al_get_audio_depth_size:libc.size_t( conf:ALLEGRO_AUDIO_DEPTH )
Function al_fill_silence:Void( buf:Void Ptr, samples:UInt, depth:ALLEGRO_AUDIO_DEPTH, chan_conf:ALLEGRO_CHANNEL_CONF )
Function al_reserve_samples:Bool( reserve_samples:Int )
Function al_get_default_mixer:ALLEGRO_MIXER Ptr(  )
Function al_set_default_mixer:Bool( mixer:ALLEGRO_MIXER Ptr )
Function al_restore_default_mixer:Bool(  )
Function al_play_sample:Bool( data:ALLEGRO_SAMPLE Ptr, gain:Float, pan:Float, speed:Float, loop:ALLEGRO_PLAYMODE, ret_id:ALLEGRO_SAMPLE_ID Ptr )
Function al_stop_sample:Void( spl_id:ALLEGRO_SAMPLE_ID Ptr )
Function al_stop_samples:Void(  )
Function al_get_default_voice:ALLEGRO_VOICE Ptr(  )
Function al_set_default_voice:Void( voice:ALLEGRO_VOICE Ptr )
Function al_register_sample_loader:Bool( ext:CString, loader:ALLEGRO_SAMPLE Ptr( CString ) )
Function al_register_sample_saver:Bool( ext:CString, saver:Bool( CString, ALLEGRO_SAMPLE Ptr ) )
Function al_register_audio_stream_loader:Bool( ext:CString, stream_loader:ALLEGRO_AUDIO_STREAM Ptr( CString, libc.size_t, UInt ) )
Function al_register_sample_loader_f:Bool( ext:CString, loader:ALLEGRO_SAMPLE Ptr( ALLEGRO_FILE Ptr ) )
Function al_register_sample_saver_f:Bool( ext:CString, saver:Bool( ALLEGRO_FILE Ptr, ALLEGRO_SAMPLE Ptr ) )
Function al_register_audio_stream_loader_f:Bool( ext:CString, stream_loader:ALLEGRO_AUDIO_STREAM Ptr( ALLEGRO_FILE Ptr, libc.size_t, UInt ) )
Function al_load_sample:ALLEGRO_SAMPLE Ptr( filename:CString )
Function al_save_sample:Bool( filename:CString, spl:ALLEGRO_SAMPLE Ptr )
Function al_load_audio_stream:ALLEGRO_AUDIO_STREAM Ptr( filename:CString, buffer_count:libc.size_t, samples:UInt )
Function al_load_sample_f:ALLEGRO_SAMPLE Ptr( fp:ALLEGRO_FILE Ptr, ident:CString )
Function al_save_sample_f:Bool( fp:ALLEGRO_FILE Ptr, ident:CString, spl:ALLEGRO_SAMPLE Ptr )
Function al_load_audio_stream_f:ALLEGRO_AUDIO_STREAM Ptr( fp:ALLEGRO_FILE Ptr, ident:CString, buffer_count:libc.size_t, samples:UInt )

'***** File: native/include/allegro5/allegro_acodec.h *****

Function al_init_acodec_addon:Bool(  )
Function al_get_allegro_acodec_version:Int(  )

'***** File: native/include/allegro5/allegro_windows.h *****

Function al_get_win_window_handle:Int(  )
Function al_win_add_window_callback:Bool( display:ALLEGRO_DISPLAY Ptr, callback:Bool( ALLEGRO_DISPLAY Ptr, Int, Int, Int, Int Ptr, Void Ptr ), userdata:Void Ptr )
Function al_win_remove_window_callback:Bool( display:ALLEGRO_DISPLAY Ptr, callback:Bool( ALLEGRO_DISPLAY Ptr, Int, Int, Int, Int Ptr, Void Ptr ), userdata:Void Ptr )

'***** File: native/include/allegro5/allegro_direct3d.h *****

Function al_get_d3d_device:Int(  )
Function al_get_d3d_system_texture:Int(  )
Function al_get_d3d_video_texture:Int(  )
Function al_have_d3d_non_pow2_texture_support:Bool(  )
Function al_have_d3d_non_square_texture_support:Bool(  )
Function al_get_d3d_texture_position:Void( bitmap:ALLEGRO_BITMAP Ptr, u:Int Ptr, v:Int Ptr )
Function al_get_d3d_texture_size:Bool( bitmap:ALLEGRO_BITMAP Ptr, width:Int Ptr, height:Int Ptr )
Function al_is_d3d_device_lost:Bool( display:ALLEGRO_DISPLAY Ptr )
Function al_set_d3d_device_release_callback:Void( callback:Void( ALLEGRO_DISPLAY Ptr ) )
Function al_set_d3d_device_restore_callback:Void( callback:Void( ALLEGRO_DISPLAY Ptr ) )

'***** File: native/include/allegro5/allegro_opengl.h *****

Enum ALLEGRO_OPENGL_VARIANT
End
Const ALLEGRO_DESKTOP_OPENGL:ALLEGRO_OPENGL_VARIANT
Const ALLEGRO_OPENGL_ES:ALLEGRO_OPENGL_VARIANT
Function al_get_opengl_version:Int(  )
Function al_have_opengl_extension:Bool( extension_:CString )
Function al_get_opengl_proc_address:Void Ptr( name:CString )
Function al_get_opengl_extension_list:ALLEGRO_OGL_EXT_LIST Ptr(  )
Function al_get_opengl_texture:Int(  )
Function al_remove_opengl_fbo:Void( bitmap:ALLEGRO_BITMAP Ptr )
Function al_get_opengl_fbo:Int(  )
Function al_get_opengl_texture_size:Bool( bitmap:ALLEGRO_BITMAP Ptr, w:Int Ptr, h:Int Ptr )
Function al_get_opengl_texture_position:Void( bitmap:ALLEGRO_BITMAP Ptr, u:Int Ptr, v:Int Ptr )
Function al_get_opengl_program_object:Int(  )
Function al_set_current_opengl_context:Void( display:ALLEGRO_DISPLAY Ptr )
Function al_get_opengl_variant:Int(  )

'***** File: native/include/allegro5/allegro_physfs.h *****

Function al_set_physfs_file_interface:Void(  )
Function al_get_allegro_physfs_version:Int(  )

'***** File: native/include/allegro5/allegro_memfile.h *****

Function al_open_memfile:ALLEGRO_FILE Ptr( mem:Void Ptr, size:Int, mode:CString )
Function al_get_allegro_memfile_version:Int(  )

'***** File: native/include/allegro5/allegro_video.h *****

Enum ALLEGRO_VIDEO_EVENT_TYPE
End
Const ALLEGRO_EVENT_VIDEO_FRAME_SHOW:ALLEGRO_VIDEO_EVENT_TYPE
Const ALLEGRO_EVENT_VIDEO_FINISHED:ALLEGRO_VIDEO_EVENT_TYPE
Const _ALLEGRO_EVENT_VIDEO_SEEK:ALLEGRO_VIDEO_EVENT_TYPE
Enum ALLEGRO_VIDEO_POSITION_TYPE
End
Const ALLEGRO_VIDEO_POSITION_ACTUAL:ALLEGRO_VIDEO_POSITION_TYPE
Const ALLEGRO_VIDEO_POSITION_VIDEO_DECODE:ALLEGRO_VIDEO_POSITION_TYPE
Const ALLEGRO_VIDEO_POSITION_AUDIO_DECODE:ALLEGRO_VIDEO_POSITION_TYPE
Function al_open_video:ALLEGRO_VIDEO Ptr( filename:CString )
Function al_close_video:Void( video:ALLEGRO_VIDEO Ptr )
Function al_start_video:Void( video:ALLEGRO_VIDEO Ptr, mixer:ALLEGRO_MIXER Ptr )
Function al_start_video_with_voice:Void( video:ALLEGRO_VIDEO Ptr, voice:ALLEGRO_VOICE Ptr )
Function al_get_video_event_source:ALLEGRO_EVENT_SOURCE Ptr( video:ALLEGRO_VIDEO Ptr )
Function al_set_video_playing:Void( video:ALLEGRO_VIDEO Ptr, playing:Bool )
Function al_is_video_playing:Bool( video:ALLEGRO_VIDEO Ptr )
Function al_get_video_audio_rate:Double( video:ALLEGRO_VIDEO Ptr )
Function al_get_video_fps:Double( video:ALLEGRO_VIDEO Ptr )
Function al_get_video_scaled_width:Float( video:ALLEGRO_VIDEO Ptr )
Function al_get_video_scaled_height:Float( video:ALLEGRO_VIDEO Ptr )
Function al_get_video_frame:ALLEGRO_BITMAP Ptr( video:ALLEGRO_VIDEO Ptr )
Function al_get_video_position:Double( video:ALLEGRO_VIDEO Ptr, which:ALLEGRO_VIDEO_POSITION_TYPE )
Function al_seek_video:Bool( video:ALLEGRO_VIDEO Ptr, pos_in_seconds:Double )
Function al_init_video_addon:Bool(  )
Function al_shutdown_video_addon:Void(  )
Function al_get_allegro_video_version:Int(  )

'***** Extern Structs *****

Struct ALLEGRO_AUDIO_STREAM
End
Struct ALLEGRO_BITMAP
End
Struct ALLEGRO_COND
End
Struct ALLEGRO_CONFIG
End
Struct ALLEGRO_CONFIG_ENTRY
End
Struct ALLEGRO_CONFIG_SECTION
End
Struct ALLEGRO_DISPLAY
End
Struct ALLEGRO_EVENT_QUEUE
End
Struct ALLEGRO_FILE
End
Struct ALLEGRO_FILECHOOSER
End
Struct ALLEGRO_FONT
End
Struct ALLEGRO_HAPTIC_DRIVER
End
Struct ALLEGRO_INDEX_BUFFER
End
Struct ALLEGRO_JOYSTICK_DRIVER
End
Struct ALLEGRO_MENU
End
Struct ALLEGRO_MIXER
End
Struct ALLEGRO_MOUSE_CURSOR
End
Struct ALLEGRO_MUTEX
End
Struct ALLEGRO_OGL_EXT_LIST
End
Struct ALLEGRO_PATH
End
Struct ALLEGRO_SAMPLE
End
Struct ALLEGRO_SAMPLE_INSTANCE
End
Struct ALLEGRO_SHADER
End
Struct ALLEGRO_SYSTEM
End
Struct ALLEGRO_TEXTLOG
End
Struct ALLEGRO_THREAD
End
Struct ALLEGRO_VERTEX_BUFFER
End
Struct ALLEGRO_VERTEX_DECL
End
Struct ALLEGRO_VIDEO
End
Struct ALLEGRO_VOICE
End