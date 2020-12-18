/* gtkemojichooser.h: An Emoji chooser widget
*SPDX-FileCopyrightText: Copyright 2017, Red Hat, Inc.
*SPDX-License-Identifier: LGPL-2.1-or-later
*/

#pragma once
#include <gtk/gtk.h>

G_BEGIN_DECLS

#define GTK_TYPE_EMOJI_CHOOSER                 (dino_emoji_chooser_get_type ())
#define DINO_EMOJI_CHOOSER(obj)                 (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_EMOJI_CHOOSER, DinoEmojiChooser))
#define DINO_EMOJI_CHOOSER_CLASS(klass)         (G_TYPE_CHECK_CLASS_CAST ((klass), GTK_TYPE_EMOJI_CHOOSER, DinoEmojiChooserClass))
#define GTK_IS_EMOJI_CHOOSER(obj)              (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_EMOJI_CHOOSER))
#define GTK_IS_EMOJI_CHOOSER_CLASS(klass)      (G_TYPE_CHECK_CLASS_TYPE ((klass), GTK_TYPE_EMOJI_CHOOSER))
#define DINO_EMOJI_CHOOSER_GET_CLASS(obj)       (G_TYPE_INSTANCE_GET_CLASS ((obj), GTK_TYPE_EMOJI_CHOOSER, DinoEmojiChooserClass))

typedef struct _DinoEmojiChooser      DinoEmojiChooser;
typedef struct _DinoEmojiChooserClass DinoEmojiChooserClass;

GType      dino_emoji_chooser_get_type (void) G_GNUC_CONST;
DinoEmojiChooser *dino_emoji_chooser_new      (void);

G_END_DECLS
