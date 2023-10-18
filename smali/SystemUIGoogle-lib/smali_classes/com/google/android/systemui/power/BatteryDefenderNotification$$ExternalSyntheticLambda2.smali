.class public final synthetic Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# virtual methods
.method public final binderDied()V
    .locals 1

    const-string p0, "BatteryDefenderNotification"

    const-string v0, "Service died"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
