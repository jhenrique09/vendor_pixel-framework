.class public final Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerNotificationWarningsGoogleImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PNW.startSaverConfirmation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p2, p2, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    invoke-virtual {p2}, Lcom/google/android/systemui/power/LowPowerWarningsController;->cancelNotification()V

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    new-instance p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v4, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {p2, p1, v0, v4, p0}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserTracker;Lcom/android/internal/logging/UiEventLogger;)V

    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0055

    invoke-virtual {p0, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a06f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v2, 0x7f0a02d6

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-boolean v3, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    const v4, 0x7f0a06f9

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2, v0, v2, v1}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a02d7

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2, v0, v2, v3}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const p1, 0x7f13077b

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p1, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v0, 0x7f130777

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    iget-object p1, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, v1}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;I)V

    const v0, 0x7f130153

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, v3}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;I)V

    const v0, 0x7f130776

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p2, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    sget-object p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-virtual {p2, p0}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->log(Lcom/google/android/systemui/power/BatteryMetricEvent;)V

    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p1, p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryInfoBroadcast:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;Landroid/content/Intent;)V

    iget-object p1, p1, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p1, p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/LowPowerWarningsController;Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p1, p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryDefenderNotification:Lcom/google/android/systemui/power/BatteryDefenderNotification;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v2, "level"

    const/4 v4, -0x1

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "scale"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_1
    iput v4, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mBatteryLevel:I

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    const-string v5, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-static {p2}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(Landroid/content/Intent;)Z

    move-result v5

    const-string v6, "isPlugged: "

    const-string v7, " | isBatteryDefender: "

    const-string v8, " | defenderEnabled: "

    invoke-static {v6, v4, v7, v3, v8}, Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForFingerprintUnlockingAllowed$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " | isCharged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " | isPluggedInDock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryDefenderNotification"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f1302f9

    const-string v8, "battery_defender"

    iget-object v9, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_8

    iget-boolean v10, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    if-eqz v10, :cond_8

    iput-boolean v1, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    invoke-virtual {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v6, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_8
    iget-boolean v10, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    const-string v11, "dock_defender_bypass"

    iget-object v12, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_a

    if-nez v5, :cond_9

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v11, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v5, 0x7f13031c

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_a
    iget-boolean v5, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "dock_defender_first_run"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v11, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_5

    :cond_b
    move v2, v1

    :goto_5
    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    iget-boolean v2, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendDockDefenderFirstRunNotification()V

    goto :goto_6

    :cond_d
    new-instance v2, Lcom/google/android/systemui/power/BatteryDefenderNotification$2;

    invoke-direct {v2, p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification$2;-><init>(Lcom/google/android/systemui/power/BatteryDefenderNotification;)V

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_6
    if-eqz v3, :cond_10

    iget-boolean v2, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    new-instance v2, Lcom/google/android/systemui/power/BatteryDefenderNotification$1;

    invoke-direct {v2, p1, v4}, Lcom/google/android/systemui/power/BatteryDefenderNotification$1;-><init>(Lcom/google/android/systemui/power/BatteryDefenderNotification;Z)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_a

    :cond_f
    :goto_7
    invoke-virtual {p1, v4}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendNotification(Z)V

    goto/16 :goto_a

    :cond_10
    iget-boolean v2, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-eqz v2, :cond_1a

    iput-boolean v1, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    const v2, 0x7f1302f7

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-boolean v2, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    goto/16 :goto_a

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "trigger_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_12

    invoke-static {v12, v2, v3}, Lcom/google/android/systemui/power/PowerUtils;->getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_14

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    if-lez v4, :cond_13

    const-wide/32 v2, 0x927c0

    cmp-long v2, v10, v2

    if-ltz v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    if-eqz v1, :cond_14

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-static {v12, v1, v2}, Lcom/google/android/systemui/power/PowerUtils;->getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1302f8

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v4, 0x1080864

    iput v4, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v12, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    invoke-static {v12}, Lcom/google/android/systemui/power/PowerUtils;->createBatterySettingsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    const v3, 0x7f130143

    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1302f5

    invoke-static {v4, v12}, Lcom/google/android/systemui/power/PowerUtils;->createHelpArticlePendingIntent(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v3, 0x10405ee

    invoke-static {v12, v2, v3}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v6, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v1, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    goto :goto_9

    :cond_14
    const-string v1, "error getting trigger time"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    goto :goto_a

    :cond_15
    const-string v3, "PNW.defenderResumeCharging"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v2, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resumeCharging(Lcom/google/android/systemui/power/BatteryMetricEvent;Z)V

    goto :goto_a

    :cond_16
    const-string v3, "PNW.defenderResumeCharging.settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v2, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryMetricEvent;

    const-string v3, "is_dock_defender"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resumeCharging(Lcom/google/android/systemui/power/BatteryMetricEvent;Z)V

    goto :goto_a

    :cond_17
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    if-eqz v1, :cond_1a

    iget-boolean p1, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    if-nez p1, :cond_18

    goto :goto_a

    :cond_18
    new-instance p1, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_19
    const-string v1, "systemui.power.action.dismissBatteryDefenderWarning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p1, p1, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_1a

    sget-object v1, Lcom/google/android/systemui/power/BatteryMetricEvent;->DELETE_BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1a
    :goto_a
    iget-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p1, p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mAdaptiveChargingNotification:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    if-eqz p1, :cond_20

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    goto/16 :goto_d

    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->resolveBatteryChangedIntent(Landroid/content/Intent;)V

    goto :goto_d

    :cond_1c
    const-string v0, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->checkAdaptiveChargingStatus(Z)V

    goto :goto_d

    :cond_1d
    const-string v2, "PNW.acChargeNormally"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v2, :cond_1f

    sget-object v1, Lcom/google/android/systemui/power/BatteryMetricEvent;->ADAPTIVE_CHARGING_NOTIFICATION_BYPASS:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-interface {v3, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v1, p1, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->initHalInterface(Landroid/os/IBinder$DeathRecipient;)Lvendor/google/google_battery/IGoogleBattery;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_c

    :cond_1e
    :try_start_0
    move-object v2, v1

    check-cast v2, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {v2}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->setChargingDeadline()V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v2

    const-string v3, "AdaptiveChargingManager"

    const-string v4, "setChargingDeadline failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->destroyHalInterface(Lvendor/google/google_battery/IGoogleBattery;Landroid/os/IBinder$DeathRecipient;)V

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_d

    :cond_1f
    const-string p1, "systemui.power.action.dismissAdaptiveChargingWarning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    if-eqz v3, :cond_20

    sget-object p1, Lcom/google/android/systemui/power/BatteryMetricEvent;->DELETE_ADAPTIVE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-interface {v3, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_20
    :goto_d
    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mIncompatibleChargerNotification:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    if-eqz p0, :cond_22

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchIntent: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IncompatibleChargerNotification"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    new-instance p1, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/IncompatibleChargerNotification;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_21
    const-string p2, "systemui.power.action.dismissIncompatibleChargerWarning"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Lcom/google/android/systemui/power/BatteryMetricEvent;->DELETE_INCOMPATIBLE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    iget-object p0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_22

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_22
    :goto_e
    return-void
.end method
