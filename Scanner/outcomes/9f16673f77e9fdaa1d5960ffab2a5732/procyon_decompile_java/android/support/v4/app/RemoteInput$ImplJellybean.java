// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Bundle;
import android.content.Intent;

class RemoteInput$ImplJellybean implements RemoteInput$Impl
{
    public void addResultsToIntent(final RemoteInput[] array, final Intent intent, final Bundle bundle) {
        RemoteInputCompatJellybean.addResultsToIntent(array, intent, bundle);
    }
    
    public Bundle getResultsFromIntent(final Intent intent) {
        return RemoteInputCompatJellybean.getResultsFromIntent(intent);
    }
}
