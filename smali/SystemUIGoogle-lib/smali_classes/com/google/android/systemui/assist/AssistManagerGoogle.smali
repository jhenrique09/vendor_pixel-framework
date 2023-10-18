.class public final Lcom/google/android/systemui/assist/AssistManagerGoogle;
.super Lcom/android/systemui/assist/AssistManager;
.source ""


# instance fields
.field public final mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

.field public mCheckAssistantStatus:Z

.field public final mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

.field public mGoogleIsAssistant:Z

.field public mNavigationMode:I

.field public mNgaIsAssistant:Z

.field public final mNgaMessageHandler:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

.field public final mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

.field public final mOnProcessBundle:Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;

.field public final mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

.field public mSqueezeSetUp:Z

.field public mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Ldagger/Lazy;Landroid/os/Handler;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Landroid/view/IWindowManager;Lcom/android/systemui/assist/AssistLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 15

    move-object v12, p0

    move-object/from16 v13, p12

    move-object/from16 v14, p16

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p14

    move-object/from16 v8, p18

    move-object/from16 v9, p15

    move-object/from16 v10, p19

    move-object/from16 v11, p20

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;Lcom/android/systemui/assist/AssistLogger;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    move-object/from16 v0, p15

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, p6

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    move-object/from16 v1, p10

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iput-object v14, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    iput-object v14, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    move-object/from16 v1, p11

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    iput v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    iput-object v13, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    iget-object v1, v13, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistantPresenceChangeListeners:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p13

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaMessageHandler:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    new-instance v0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOnProcessBundle:Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;

    move-object/from16 v0, p17

    iput-object v0, v12, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mWindowManagerService:Landroid/view/IWindowManager;

    return-void
.end method


# virtual methods
.method public final addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V
    .locals 7

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    iget-boolean v4, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    iget-boolean v5, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    iget-boolean v6, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsLongPressHomeEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaEnabledListener;->onOpaEnabledReceived(Landroid/content/Context;ZZZZ)V

    return-void
.end method

.method public final onInvocationProgress(IF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assist_gesture_setup_complete"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mSqueezeSetUp:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-object v4, v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-boolean v4, v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    iget-boolean v5, v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->updateAssistantPresence(ZZZ)V

    iput-boolean v2, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    :cond_4
    if-ne p1, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mSqueezeSetUp:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager$UiController;->onInvocationProgress(IF)V

    :cond_6
    return-void
.end method
