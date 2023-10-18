.class public final synthetic Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iget p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcInterfaceToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0, v2}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not change NFC reader mode, exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReverseChargingControl"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
