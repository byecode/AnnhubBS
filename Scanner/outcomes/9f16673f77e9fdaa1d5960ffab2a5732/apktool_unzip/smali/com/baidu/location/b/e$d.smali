.class Lcom/baidu/location/b/e$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/e;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/e;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/e$d;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/e;Lcom/baidu/location/b/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/e$d;-><init>(Lcom/baidu/location/b/e;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-static {v0}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/e$d;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/a/v;->a(Landroid/location/Location;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/e$d;->b:J

    iget-object v0, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-static {v0}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-static {v0}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
