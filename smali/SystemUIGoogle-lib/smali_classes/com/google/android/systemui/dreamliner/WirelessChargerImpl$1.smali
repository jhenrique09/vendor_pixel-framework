.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;->this$0:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    sget v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v0, :cond_2

    :try_start_0
    check-cast v0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->isDockPresent()Lvendor/google/wireless_charger/DockPresent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mPollingStartedTimeNs:J

    sget-wide v5, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->MAX_POLLING_TIMEOUT_NS:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget v1, v0, Lvendor/google/wireless_charger/DockPresent;->id:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lvendor/google/wireless_charger/DockPresent;->docked:Z

    iget-byte v4, v0, Lvendor/google/wireless_charger/DockPresent;->type:B

    iget-byte v5, v0, Lvendor/google/wireless_charger/DockPresent;->orientation:B

    iget-boolean v6, v0, Lvendor/google/wireless_charger/DockPresent;->isGetInfoSupported:Z

    iget v7, v0, Lvendor/google/wireless_charger/DockPresent;->id:I

    move-object v2, v1

    check-cast v2, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;->onCallback(ZBBZI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDockPresent fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Dreamliner-WLC_HAL"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
