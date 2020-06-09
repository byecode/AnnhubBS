// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.view.View$OnTouchListener;
import android.view.View;
import android.os.Build$VERSION;

public final class ListPopupWindowCompat
{
    static final ListPopupWindowCompat$ListPopupWindowImpl IMPL;
    
    static {
        if (Build$VERSION.SDK_INT >= 19) {
            IMPL = new ListPopupWindowCompat$KitKatListPopupWindowImpl();
        }
        else {
            IMPL = new ListPopupWindowCompat$BaseListPopupWindowImpl();
        }
    }
    
    public static View$OnTouchListener createDragToOpenListener(final Object o, final View view) {
        return ListPopupWindowCompat.IMPL.createDragToOpenListener(o, view);
    }
}
