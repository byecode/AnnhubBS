.class Landroid/support/v4/app/ShareCompatICS;
.super Ljava/lang/Object;
.source "ShareCompatICS.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String; = ".sharecompat_"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    .line 34
    .local v0, "itemProvider":Landroid/view/ActionProvider;
    const/4 v1, 0x0

    .line 35
    .local v1, "provider":Landroid/widget/ShareActionProvider;
    instance-of v2, v0, Landroid/widget/ShareActionProvider;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Landroid/widget/ShareActionProvider;

    invoke-direct {v2, p1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    goto :goto_0

    .line 38
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 40
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".sharecompat_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 43
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 44
    return-void
.end method
