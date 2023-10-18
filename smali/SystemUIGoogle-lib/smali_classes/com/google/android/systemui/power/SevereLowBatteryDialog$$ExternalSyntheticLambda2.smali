.class public final synthetic Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.google.android.flipendo.api"

    const-string v1, "force_enable_flipendo_method"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerUtils"

    const-string v1, "enableFlipendo() failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
