.class public final synthetic Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/IncompatibleChargerNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/IncompatibleChargerNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    iget-object v0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mContext:Landroid/content/Context;

    const-string v1, "IncompatibleChargerNotification"

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->containsIncompatibleChargers(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "refreshUsbState: "

    invoke-static {v3, v2, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/IncompatibleChargerNotification;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_0

    const-string p0, "last_incompatible_charger_time"

    goto :goto_0

    :cond_0
    const-string p0, "last_compatible_charger_time"

    :goto_0
    invoke-static {v0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
