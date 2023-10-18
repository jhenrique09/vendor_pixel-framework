.class public final Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive(); "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_GET_FEATURES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_SET_FEATURES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v5, v3

    :goto_0
    const/4 v0, 0x0

    const-string v2, "android.intent.extra.RESULT_RECEIVER"

    const-wide/16 v6, -0x1

    const-string v8, "charger_id"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "gF, id="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    if-eqz p1, :cond_a

    cmp-long p2, v8, v6

    if-nez p2, :cond_7

    invoke-virtual {p1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_7
    new-instance p2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;

    invoke-direct {p2, p0, p1, v8, v9}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;J)V

    invoke-static {p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->updateCurrentDockingStatus(Landroid/content/Context;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-boolean v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIsWirelessCharging:Z

    invoke-static {p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->isWirelessCharging(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIsWirelessCharging:Z

    iget-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-boolean p2, p2, Lcom/google/android/systemui/dreamliner/DockObserver;->mIsWirelessCharging:Z

    if-eq v2, p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mWirelessCharging:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-boolean v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIsWirelessCharging:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-boolean p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIsWirelessCharging:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->tryToStartDreamlinerServiceIfNeeded(Landroid/content/Context;Z)V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string p1, "charger_feature"

    invoke-virtual {p2, p1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/ResultReceiver;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sF, id="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", feature="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    cmp-long p1, v8, v6

    if-eqz p1, :cond_9

    cmp-long p1, v10, v6

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;

    move-object v0, p1

    move-object v1, p0

    move-wide v3, v8

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;JJ)V

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {v2, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->-$$Nest$mstopDreamlinerService(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    sput-boolean v3, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    :cond_a
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_5
        -0x6f14376c -> :sswitch_4
        -0x5bb23923 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x34980820 -> :sswitch_1
        0x4e98453e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
