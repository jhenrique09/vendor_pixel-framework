.class public final Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mChargerId:J

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-wide p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mChargerId:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-wide v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mChargerId:J

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, v1, v2}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getFeatures(J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "get features fail: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Dreamliner-WLC_HAL"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    :goto_0
    const-string p0, "GF() result: "

    const-string v2, "DLObserver"

    invoke-static {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "GF() response: f="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "charger_feature"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void
.end method
