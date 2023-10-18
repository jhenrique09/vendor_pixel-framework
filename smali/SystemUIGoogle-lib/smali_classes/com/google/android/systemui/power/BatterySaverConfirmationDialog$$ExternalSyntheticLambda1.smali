.class public final synthetic Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    iget-object v1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "update_flipendo_mode"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.google.android.flipendo.api"

    const-string v5, "update_flipendo_mode_method"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PowerUtils"

    const-string v4, "applyExtremeSaverMode() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v2, v1, v2, v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(ILandroid/content/Context;ZZ)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const-string v4, "low_power_warning_acknowledged"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const-string v1, "extra_low_power_warning_acknowledged"

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
