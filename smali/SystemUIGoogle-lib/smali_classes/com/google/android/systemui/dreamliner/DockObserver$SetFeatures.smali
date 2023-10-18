.class public final Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mChargerId:J

.field public final mFeature:J

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-wide p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mChargerId:J

    iput-wide p5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mFeature:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-wide v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mChargerId:J

    iget-wide v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mFeature:J

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->setFeatures(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set features fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Dreamliner-WLC_HAL"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
