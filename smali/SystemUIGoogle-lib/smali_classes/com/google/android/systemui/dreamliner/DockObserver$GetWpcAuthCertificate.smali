.class public final Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mLength:S

.field public final mOffset:S

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final mSlotNum:B

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;BSS)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mSlotNum:B

    iput-short p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mOffset:S

    iput-short p5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mLength:S

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mSlotNum:B

    iget-short v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mOffset:S

    iget-short v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mLength:S

    new-instance v4, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;

    iget-object v5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v4, v5, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()Z

    iget-object p0, v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz p0, :cond_3

    int-to-char v0, v2

    int-to-char v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    check-cast p0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {p0, v1, v0, v2}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->getWpcAuthCertificate(BCC)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mapError(Ljava/lang/Exception;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get wpc cert fail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Dreamliner-WLC_HAL"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v5

    :goto_0
    const-string v1, "GWAC() result: "

    const-string v2, "DLObserver"

    invoke-static {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, v4, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "GWAC() response: c="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "wpc_cert"

    invoke-virtual {v5, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    :goto_1
    invoke-virtual {v1, v3, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v1, p0, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    :goto_2
    return-void
.end method
