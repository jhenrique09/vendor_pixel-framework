.class public final Lcom/google/android/systemui/power/BatteryInfoBroadcast$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$3;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    const-string p1, "onMetadataChanged: "

    const-string p3, "BatteryInfoBroadcast"

    invoke-static {p1, p2, p3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$3;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    const-string p1, "PNW.bluetoothStatusChanged"

    invoke-static {p1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntentForSI(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
