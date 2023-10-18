.class public final Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->$r8$classId:I

    const-string v1, "PNW.batteryStatusChanged"

    const-string v2, "BatteryInfoBroadcast"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "mDeviceNameObserver: "

    invoke-static {v0, p1, v2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    invoke-static {v1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntentForSI(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :goto_0
    const-string v0, "mRemainingTimeObserver: "

    invoke-static {v0, p1, v2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;->this$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBatteryChangeIntent(Landroid/content/Intent;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
