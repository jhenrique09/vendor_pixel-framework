.class public final Lcom/google/android/systemui/dreamliner/DockObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# static fields
.field static final ACTION_ALIGN_STATE_CHANGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ALIGNMENT_CHANGE"

.field static final ACTION_CHALLENGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"

.field static final ACTION_DOCK_UI_ACTIVE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"

.field static final ACTION_DOCK_UI_IDLE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"

.field static final ACTION_GET_DOCK_INFO:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"

.field static final ACTION_KEY_EXCHANGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"

.field static final ACTION_REBIND_DOCK_SERVICE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

.field static final ACTION_START_DREAMLINER_CONTROL_SERVICE:Ljava/lang/String; = "com.google.android.apps.dreamliner.START"

.field static final COMPONENTNAME_DREAMLINER_CONTROL_SERVICE:Ljava/lang/String; = "com.google.android.apps.dreamliner/.DreamlinerControlService"

.field static final EXTRA_ALIGN_STATE:Ljava/lang/String; = "align_state"

.field static final EXTRA_CHALLENGE_DATA:Ljava/lang/String; = "challenge_data"

.field static final EXTRA_CHALLENGE_DOCK_ID:Ljava/lang/String; = "challenge_dock_id"

.field static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "public_key"

.field static final KEY_SHOWING:Ljava/lang/String; = "showing"

.field static final PERMISSION_WIRELESS_CHARGER_STATUS:Ljava/lang/String; = "com.google.android.systemui.permission.WIRELESS_CHARGER_STATUS"

.field static final RESULT_NOT_FOUND:I = 0x1

.field static final RESULT_OK:I = 0x0

.field public static sIsDockingUiShowing:Z = false

.field static volatile sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final mAlignmentStateListeners:Ljava/util/List;

.field public final mClients:Ljava/util/List;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

.field mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

.field public final mDockObserverBroadcastReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;

.field mDockState:I

.field public mDreamlinerGear:Landroid/widget/ImageView;

.field final mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

.field mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

.field public mFanLevel:I

.field public mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

.field public final mInterruptSuppressor:Lcom/google/android/systemui/dreamliner/DockObserver$2;

.field public mIsWirelessCharging:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field mLastAlignState:I

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mPhotoAction:Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

.field public mPhotoPreview:Landroid/widget/FrameLayout;

.field mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUserChangedCallback:Lcom/google/android/systemui/dreamliner/DockObserver$1;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWirelessCharger:Ljava/util/Optional;


# direct methods
.method public static -$$Nest$msendDockActiveIntent(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DLObserver"

    const-string v1, "sendDockActiveIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static -$$Nest$mstopDreamlinerService(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v2, Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Lcom/google/android/systemui/dreamliner/DockGestureController;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {v1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    iput-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserChangedCallback:Lcom/google/android/systemui/dreamliner/DockObserver$1;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    iget-boolean v3, v1, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, v1, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->mListening:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DLObserver"

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/dreamliner/DockAlignmentController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIsWirelessCharging:Z

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v3, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v3, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockObserverBroadcastReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;

    iput v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    iput v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$1;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserChangedCallback:Lcom/google/android/systemui/dreamliner/DockObserver$1;

    new-instance v7, Lcom/google/android/systemui/dreamliner/DockObserver$2;

    invoke-direct {v7}, Lcom/google/android/systemui/dreamliner/DockObserver$2;-><init>()V

    iput-object v7, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mInterruptSuppressor:Lcom/google/android/systemui/dreamliner/DockObserver$2;

    move-object v2, p6

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    invoke-direct {v2, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DLObserver"

    const-string v4, "wireless charger is not present, check dock component."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, p3

    iput-object v2, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.google.android.systemui.dreamliner.ACTION_GET_FEATURES"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.google.android.systemui.dreamliner.ACTION_SET_FEATURES"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v5, "com.google.android.systemui.permission.WIRELESS_CHARGER_STATUS"

    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    move-object v1, p4

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->refreshFanLevel(Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;)V

    return-void
.end method

.method public static assertNotNull(Lcom/google/android/systemui/dreamliner/DockGestureController;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "DockGestureController is null"

    const-string v0, "DLObserver"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isWirelessCharging(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    :cond_0
    const/4 p0, 0x0

    const-string v1, "DLObserver"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "plugged="

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid battery intent when checking plugged status. batteryIntent="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static notifyForceEnabledAmbientDisplay(Z)V
    .locals 1

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/service/dreams/IDreamManager;->forceAmbientDisplayEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "DLObserver"

    const-string v0, "DreamManager not found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :goto_0
    return-void
.end method

.method public static runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add listener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDockObserverBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockObserverBroadcastReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DockObserverBroadcastReceiver;

    return-object p0
.end method

.method public final isDocked()Z
    .locals 2

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyDreamlinerAlignStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendBroadcastAsUser for alignment changed, alignState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.systemui.dreamliner.ALIGNMENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "align_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final notifyDreamlinerLatestFanLevel()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notify l="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mProtectedBroadcastSender:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.dreamliner.ACTION_UPDATE_FAN_LEVEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fan_level"

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final onDockStateChanged(I)V
    .locals 7

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dock state changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/dock/DockManager$DockEventListener;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDockEvent mDockState = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-static {v5, v6, v1}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v5, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-interface {v4, v5}, Lcom/android/systemui/dock/DockManager$DockEventListener;->onEvent(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-nez v3, :cond_2

    iput-boolean v2, v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIconShowing:Z

    iput-boolean v2, v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    invoke-virtual {v1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateLiveRegionIfNeeded()V

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerAlignStateChanged(I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerLatestFanLevel()V

    :cond_4
    return-void
.end method

.method public final refreshFanLevel(Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;)V
    .locals 2

    const-string v0, "DLObserver"

    const-string v1, "command=2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove listener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final runPhotoAction()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoAction:Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoAction:Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    :cond_2
    :goto_1
    return-void
.end method

.method public final tryToStartDreamlinerServiceIfNeeded(Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    const-string v1, "DLObserver"

    if-eqz v0, :cond_0

    const-string p0, "No WirelessCharger HAL"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string p0, "do not bind Dreamliner service for work profile"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;

    invoke-direct {p2, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final updateCurrentDockingStatus(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isWirelessCharging(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->tryToStartDreamlinerServiceIfNeeded(Landroid/content/Context;Z)V

    return-void
.end method
