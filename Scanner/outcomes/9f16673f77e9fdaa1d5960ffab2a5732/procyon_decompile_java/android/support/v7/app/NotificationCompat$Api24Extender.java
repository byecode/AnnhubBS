// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.app;

import android.support.v7.appcompat.R$id;
import android.support.v7.appcompat.R$color;
import android.support.v4.text.BidiFormatter;
import android.content.res.ColorStateList;
import android.text.style.TextAppearanceSpan;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.text.TextUtils;
import android.os.Build$VERSION;
import android.text.SpannableStringBuilder;
import android.support.v7.appcompat.R$layout;
import java.util.ArrayList;
import android.graphics.Bitmap;
import android.content.Context;
import android.app.PendingIntent;
import java.util.List;
import android.widget.RemoteViews;
import android.support.v4.app.NotificationCompat$MessagingStyle$Message;
import android.support.v4.app.NotificationCompat$MessagingStyle;
import android.app.Notification;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat$Builder;
import android.support.v4.app.NotificationCompat$BuilderExtender;

class NotificationCompat$Api24Extender extends NotificationCompat$BuilderExtender
{
    public Notification build(final NotificationCompat$Builder notificationCompat$Builder, final NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        addStyleToBuilderApi24(notificationBuilderWithBuilderAccessor, notificationCompat$Builder);
        return notificationBuilderWithBuilderAccessor.build();
    }
}
