.class public final synthetic Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-boolean p0, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->periodicUpdateEnabled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "HealthManager"

    const-string v0, "Enable BHI"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->bootCompletedReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method
