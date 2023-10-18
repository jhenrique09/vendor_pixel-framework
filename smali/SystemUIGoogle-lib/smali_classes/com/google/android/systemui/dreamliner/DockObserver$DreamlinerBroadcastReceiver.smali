.class Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public mListening:Z

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dock Receiver.onReceive(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_WPC_CHALLENGE_RESPONSE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_INFO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_WPC_CERTIFICATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "com.google.android.systemui.dreamliner.assistant_poodle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "com.google.android.systemui.dreamliner.photo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "com.google.android.systemui.dreamliner.pause"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "com.google.android.systemui.dreamliner.dream"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "com.google.android.systemui.dreamliner.undock"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "com.google.android.systemui.dreamliner.resume"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "com.google.android.systemui.dreamliner.paired"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_WPC_DIGESTS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_SIMPLE_INFO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_d
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_e
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_f
    const-string v5, "com.google.android.systemui.dreamliner.photo_error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    :cond_10
    move v3, v6

    goto :goto_1

    :sswitch_10
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_11
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_0

    :cond_12
    move v3, v7

    goto :goto_1

    :sswitch_12
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_SET_FAN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_0

    :cond_13
    move v3, v10

    goto :goto_1

    :sswitch_13
    const-string v5, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_LEVEL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_0

    :cond_14
    move v3, v9

    goto :goto_1

    :goto_0
    move v3, v8

    :goto_1
    const-string v5, "slot_number"

    const-string v11, "fan_id"

    const/4 v12, 0x0

    const-string v13, "android.intent.extra.RESULT_RECEIVER"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "gWACR, num="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    if-eqz v3, :cond_23

    const-string v4, "wpc_nonce"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_16

    array-length v4, v2

    if-gtz v4, :cond_15

    goto :goto_2

    :cond_15
    new-instance v4, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;

    iget-object v15, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    const/16 v19, 0x1

    move-object v14, v4

    move-object/from16 v16, v3

    move/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v14 .. v19}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B[BI)V

    invoke-static {v4}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_16
    :goto_2
    invoke-virtual {v3, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_7

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "command=0, i="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_23

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-direct {v3, v0, v2, v1, v9}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;BLandroid/os/ResultReceiver;I)V

    invoke-static {v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :pswitch_2
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->-$$Nest$msendDockActiveIntent(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    sput-boolean v9, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v5

    const-string v1, "cert_offset"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v6

    const-string v1, "cert_length"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v7

    const-string v1, "gWAC, num="

    const-string v3, ", offset="

    const-string v9, ", length="

    invoke-static {v1, v5, v3, v6, v9}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/ResultReceiver;

    if-eqz v3, :cond_23

    if-eq v5, v8, :cond_18

    if-eq v6, v8, :cond_18

    if-ne v7, v8, :cond_17

    goto :goto_3

    :cond_17
    new-instance v8, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;

    iget-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    move-object v1, v8

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;BSS)V

    invoke-static {v8}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_18
    :goto_3
    invoke-virtual {v3, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_7

    :pswitch_4
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v0, :cond_23

    const-string v1, "showing"

    invoke-virtual {v2, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIconShowing:Z

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    goto/16 :goto_7

    :pswitch_5
    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    const-string v5, "enabled"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "configPhotoAction, enabled="

    invoke-static {v5, v2, v4}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    if-eqz v4, :cond_19

    iput-boolean v2, v4, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoEnabled:Z

    :cond_19
    if-eqz v3, :cond_1a

    iget-object v2, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v2, :cond_1a

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v10, v1, v3}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoAction:Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    :cond_1a
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runPhotoAction()V

    goto/16 :goto_7

    :pswitch_6
    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v1, v7}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v1, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v2, Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Lcom/google/android/systemui/dreamliner/DockGestureController;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    goto/16 :goto_7

    :pswitch_7
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_7

    :pswitch_8
    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v1, v9}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v1, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v2, Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Lcom/google/android/systemui/dreamliner/DockGestureController;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    goto/16 :goto_7

    :pswitch_9
    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v1, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v3, Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Lcom/google/android/systemui/dreamliner/DockGestureController;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v1, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-string v3, "single_tap_action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, v1, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTapAction:Landroid/app/PendingIntent;

    :cond_1b
    :pswitch_a
    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v1, v10}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v1, v1, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v2, Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Lcom/google/android/systemui/dreamliner/DockGestureController;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->onDozingChanged(Z)V

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardMonitorCallback:Lcom/google/android/systemui/dreamliner/DockGestureController$1;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_b
    const-string v1, "slot_mask"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "gWAD, mask="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    if-eqz v2, :cond_23

    if-ne v1, v8, :cond_1c

    invoke-virtual {v2, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_7

    :cond_1c
    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B)V

    invoke-static {v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "command=3, i="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_23

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-direct {v3, v0, v2, v1, v10}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;BLandroid/os/ResultReceiver;I)V

    invoke-static {v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :pswitch_d
    iget-object v5, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "triggerChallengeWithDock"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ResultReceiver;

    if-eqz v6, :cond_23

    const-string v0, "challenge_dock_id"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v7

    const-string v0, "challenge_data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    if-eqz v8, :cond_1e

    array-length v0, v8

    if-lez v0, :cond_1e

    if-gez v7, :cond_1d

    goto :goto_4

    :cond_1d
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B[BI)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_1e
    :goto_4
    invoke-virtual {v6, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_7

    :pswitch_e
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "sendDockIdleIntent()"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_5

    :cond_1f
    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v6, v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_5
    sput-boolean v10, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    goto/16 :goto_7

    :pswitch_f
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Fail to launch photo"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    if-eqz v0, :cond_23

    invoke-virtual {v0, v9}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    goto/16 :goto_7

    :pswitch_10
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "triggerKeyExchangeWithDock"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_23

    const-string v3, "public_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_21

    array-length v3, v2

    if-gtz v3, :cond_20

    goto :goto_6

    :cond_20
    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;

    invoke-direct {v3, v0, v1, v2, v10}, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_21
    :goto_6
    invoke-virtual {v1, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_7

    :pswitch_11
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    if-eqz v2, :cond_23

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v3, v0, v2, v1, v9}, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :pswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "command=1, i="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", m="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fan_mode"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", r="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fan_rpm"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v10, :cond_22

    if-ne v2, v8, :cond_22

    const-string v0, "Failed to get r."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_22
    new-instance v4, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;BBI)V

    invoke-static {v4}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :pswitch_13
    iget-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;

    invoke-direct {v2, v10, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/dreamliner/DockObserver;->refreshFanLevel(Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;)V

    :cond_23
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f29e46b -> :sswitch_13
        -0x61077fc4 -> :sswitch_12
        -0x605a5449 -> :sswitch_11
        -0x5f4582e3 -> :sswitch_10
        -0x5e6c3fb4 -> :sswitch_f
        -0x5e29e673 -> :sswitch_e
        -0x56f61a77 -> :sswitch_d
        -0x46a28174 -> :sswitch_c
        -0x28e76e69 -> :sswitch_b
        -0x20873038 -> :sswitch_a
        -0x1ce08904 -> :sswitch_9
        -0x174a14e5 -> :sswitch_8
        0x279c4354 -> :sswitch_7
        0x283de147 -> :sswitch_6
        0x2840f983 -> :sswitch_5
        0x2ac2dd1d -> :sswitch_4
        0x74803bff -> :sswitch_3
        0x7704ca7f -> :sswitch_2
        0x77c39a5d -> :sswitch_1
        0x7e797535 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    if-nez v0, :cond_0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.dream"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.paired"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.pause"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.resume"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.undock"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.assistant_poodle"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.photo"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.photo_error"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_INFO"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_SIMPLE_INFO"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_SET_FAN"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_FAN_LEVEL"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_WPC_DIGESTS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_WPC_CERTIFICATE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_WPC_CHALLENGE_RESPONSE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.google.android.systemui.permission.WIRELESS_CHARGER_STATUS"

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    :cond_0
    return-void
.end method
