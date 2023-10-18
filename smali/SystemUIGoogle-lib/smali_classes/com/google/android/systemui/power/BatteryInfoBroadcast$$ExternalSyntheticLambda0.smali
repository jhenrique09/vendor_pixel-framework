.class public final synthetic Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v5, v4

    goto :goto_0

    :sswitch_a
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    move v5, v3

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    iget-boolean v2, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mIsPowerSaveMode:Z

    if-eq v2, v1, :cond_c

    iput-boolean v1, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mIsPowerSaveMode:Z

    invoke-virtual {v0, p0, v3}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBatteryChangeIntent(Landroid/content/Intent;Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendPluggedInStateIntent(Z)V

    const-string p0, "last_phone_connected_time"

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->recordDateTime(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v2, "PNW.bluetoothStatusChanged"

    invoke-static {v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntentForSI(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "status"

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "plugged"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryLevel:I

    if-ne v5, v1, :cond_b

    iget v5, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryStatus:I

    if-ne v5, v2, :cond_b

    iget v5, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryPlugged:I

    if-eq v5, v4, :cond_c

    :cond_b
    iput v1, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryLevel:I

    iput v2, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryStatus:I

    iput v4, v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryPlugged:I

    invoke-virtual {v0, p0, v3}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBatteryChangeIntent(Landroid/content/Intent;Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v3}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendPluggedInStateIntent(Z)V

    const-string p0, "last_phone_disconnected_time"

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->recordDateTime(Ljava/lang/String;)V

    :cond_c
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_a
        -0x5bb23923 -> :sswitch_9
        -0x5b36f014 -> :sswitch_8
        -0x2486726f -> :sswitch_7
        0x2083ec2d -> :sswitch_6
        0x2287d448 -> :sswitch_5
        0x3cbf870b -> :sswitch_4
        0x42f3be3f -> :sswitch_3
        0x46028ae6 -> :sswitch_2
        0x4a286686 -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
