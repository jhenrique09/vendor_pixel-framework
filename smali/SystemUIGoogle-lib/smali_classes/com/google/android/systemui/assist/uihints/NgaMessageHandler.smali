.class public final Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final VERBOSE:Z


# instance fields
.field public final mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

.field public final mAudioInfoListeners:Ljava/util/Set;

.field public final mCardInfoListeners:Ljava/util/Set;

.field public final mChipsInfoListeners:Ljava/util/Set;

.field public final mClearListeners:Ljava/util/Set;

.field public final mConfigInfoListeners:Ljava/util/Set;

.field public final mEdgeLightsInfoListeners:Ljava/util/Set;

.field public final mGoBackListeners:Ljava/util/Set;

.field public final mGreetingInfoListeners:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public mIsGestureNav:Z

.field public final mKeepAliveListeners:Ljava/util/Set;

.field public final mKeyboardInfoListeners:Ljava/util/Set;

.field public final mNavBarVisibilityListeners:Ljava/util/Set;

.field public final mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

.field public final mStartActivityInfoListeners:Ljava/util/Set;

.field public final mSwipeListeners:Ljava/util/Set;

.field public final mTakeScreenshotListeners:Ljava/util/Set;

.field public final mTranscriptionInfoListeners:Ljava/util/Set;

.field public final mWarmingListeners:Ljava/util/Set;

.field public final mZerostateInfoListeners:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroid/os/Handler;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeepAliveListeners:Ljava/util/Set;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAudioInfoListeners:Ljava/util/Set;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mCardInfoListeners:Ljava/util/Set;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mConfigInfoListeners:Ljava/util/Set;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mEdgeLightsInfoListeners:Ljava/util/Set;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTranscriptionInfoListeners:Ljava/util/Set;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGreetingInfoListeners:Ljava/util/Set;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mChipsInfoListeners:Ljava/util/Set;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mClearListeners:Ljava/util/Set;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mStartActivityInfoListeners:Ljava/util/Set;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeyboardInfoListeners:Ljava/util/Set;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mZerostateInfoListeners:Ljava/util/Set;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGoBackListeners:Ljava/util/Set;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mSwipeListeners:Ljava/util/Set;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTakeScreenshotListeners:Ljava/util/Set;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mWarmingListeners:Ljava/util/Set;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNavBarVisibilityListeners:Ljava/util/Set;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;)V

    move-object v2, p3

    invoke-virtual {p3, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mIsGestureNav:Z

    return-void
.end method


# virtual methods
.method public final processBundle(Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v2, v4, :cond_0

    new-instance v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda1;

    move-object/from16 v4, p2

    invoke-direct {v2, v0, v1, v4}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move-object/from16 v4, p2

    sget-boolean v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->VERBOSE:Z

    const-string v3, "chips"

    const-string v5, "text"

    const-string v6, "audio_info"

    const-string v7, "action"

    if-eqz v2, :cond_6

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_6
    :goto_2
    const-string v2, ""

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-string v9, "NgaMessageHandler"

    if-eqz v8, :cond_7

    const-string v0, "No action specified, ignoring"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v8, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-boolean v10, v8, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    iget-boolean v8, v8, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    const-string v11, "config"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    iget-object v14, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    if-nez v11, :cond_9

    const-string v11, "gesture_nav_bar_visible"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    iget-boolean v11, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mIsGestureNav:Z

    if-eqz v11, :cond_b

    const-string v11, "visible"

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iget-object v15, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNavBarVisibilityListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;

    move-object/from16 v13, v16

    check-cast v13, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;

    iput-boolean v11, v13, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->ngaVisible:Z

    invoke-virtual {v13}, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->update()V

    goto :goto_3

    :cond_9
    new-instance v11, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;

    invoke-direct {v11, v1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;-><init>(Landroid/os/Bundle;)V

    iget-object v13, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mConfigInfoListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;

    invoke-interface {v15, v11}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;->onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    :cond_b
    move v13, v12

    :goto_5
    if-nez v13, :cond_3a

    if-eqz v10, :cond_3a

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v15, 0x2

    const/4 v13, 0x5

    sparse-switch v11, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v11, "warming"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_6

    :cond_c
    move v11, v13

    goto :goto_7

    :sswitch_1
    const-string v11, "take_screenshot"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_6

    :cond_d
    const/4 v11, 0x4

    goto :goto_7

    :sswitch_2
    const-string v11, "start_activity"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_6

    :cond_e
    const/4 v11, 0x3

    goto :goto_7

    :sswitch_3
    const-string v11, "go_back"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_6

    :cond_f
    move v11, v15

    goto :goto_7

    :sswitch_4
    const-string v11, "swipe"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_6

    :cond_10
    move v11, v12

    goto :goto_7

    :sswitch_5
    const-string v11, "card"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_6

    :cond_11
    const/4 v11, 0x0

    goto :goto_7

    :goto_6
    const/4 v11, -0x1

    :goto_7
    if-eqz v11, :cond_1e

    if-eq v11, v12, :cond_17

    if-eq v11, v15, :cond_16

    const-string v15, "intent"

    const/4 v12, 0x3

    if-eq v11, v12, :cond_14

    const/4 v12, 0x4

    if-eq v11, v12, :cond_13

    if-eq v11, v13, :cond_12

    move-object v4, v9

    move/from16 v33, v10

    const/4 v9, 0x0

    goto/16 :goto_13

    :cond_12
    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    const-string v15, "threshold"

    const v12, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v15, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v12

    new-instance v15, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    invoke-direct {v15, v11, v12}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;-><init>(Landroid/app/PendingIntent;F)V

    iget-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mWarmingListeners:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;

    iput-object v15, v12, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    goto :goto_8

    :cond_13
    const-string v11, "on_finish"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v12, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTakeScreenshotListeners:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;

    iget-object v13, v15, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v4, v15, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v12

    new-instance v12, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;

    invoke-direct {v12, v15, v11}, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;Landroid/app/PendingIntent;)V

    const/4 v15, 0x5

    invoke-virtual {v13, v15, v4, v12}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    move-object/from16 v4, p2

    move v13, v15

    move-object/from16 v12, v17

    goto :goto_9

    :cond_14
    move v4, v13

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    const-string v12, "dismiss_shade"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mStartActivityInfoListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;

    if-nez v11, :cond_15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v15, "ActivityStarter"

    const-string v4, "Null intent; cannot start activity"

    invoke-static {v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_15
    iget-object v4, v15, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;->val$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v4, v11, v12}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_b
    const/4 v4, 0x5

    goto :goto_a

    :cond_16
    iget-object v4, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGoBackListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/systemui/assist/uihints/GoBackHandler;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/google/android/systemui/assist/uihints/GoBackHandler;->injectBackKeyEvent(I)V

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/google/android/systemui/assist/uihints/GoBackHandler;->injectBackKeyEvent(I)V

    goto :goto_c

    :cond_17
    const-string v4, "swipe_action"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-nez v4, :cond_19

    const-string v4, "Missing swipe action argument, ignoring request"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object v4, v9

    move/from16 v33, v10

    goto/16 :goto_12

    :cond_19
    iget-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mSwipeListeners:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/systemui/assist/uihints/SwipeHandler;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "start_x"

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v15}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v24

    const-string v13, "start_y"

    invoke-virtual {v4, v13, v15}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v26

    const-string v13, "end_x"

    invoke-virtual {v4, v13, v15}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v25

    const-string v13, "end_y"

    invoke-virtual {v4, v13, v15}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v27

    const-string v13, "duration_ms"

    const/16 v15, 0x3e8

    invoke-virtual {v4, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v29, v11

    mul-int/lit8 v11, v13, 0x3c

    div-int/2addr v11, v15

    const-string v15, "num_motion_events"

    invoke-virtual {v4, v15, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v15, "SwipeHandler"

    move-object/from16 v30, v4

    const/4 v4, 0x1

    if-lt v11, v4, :cond_1d

    const/16 v4, 0x258

    if-le v11, v4, :cond_1a

    goto :goto_f

    :cond_1a
    if-ltz v13, :cond_1c

    const/16 v4, 0x2710

    if-le v13, v4, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    const/16 v18, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v17, 0x1002

    move-wide/from16 v19, v31

    move/from16 v21, v24

    move/from16 v22, v26

    invoke-static/range {v17 .. v23}, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->injectMotionEvent(IIJFFF)V

    move-object v4, v9

    move/from16 v33, v10

    int-to-long v9, v13

    add-long v19, v31, v9

    div-int v9, v13, v11

    new-instance v10, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-wide/from16 v21, v31

    move/from16 v23, v13

    move/from16 v28, v9

    invoke-direct/range {v17 .. v28}, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;-><init>(Lcom/google/android/systemui/assist/uihints/SwipeHandler;JJIFFFFI)V

    iget-object v11, v12, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->mUiHandler:Landroid/os/Handler;

    int-to-long v12, v9

    invoke-virtual {v11, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    :cond_1c
    :goto_e
    move-object v4, v9

    move/from16 v33, v10

    const-string v9, "Invalid swipe duration requested"

    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1d
    :goto_f
    move-object v4, v9

    move/from16 v33, v10

    const-string v9, "Invalid number of motion events requested"

    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    move-object v9, v4

    move-object/from16 v11, v29

    move-object/from16 v4, v30

    move/from16 v10, v33

    goto/16 :goto_d

    :cond_1e
    move-object v4, v9

    move/from16 v33, v10

    const-string v9, "is_visible"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "sysui_color"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "animate_transition"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "card_forces_scrim"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mCardInfoListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;

    invoke-interface {v15, v10, v9, v11, v12}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;->onCardInfo(IZZZ)V

    goto :goto_11

    :cond_1f
    :goto_12
    const/4 v9, 0x1

    :goto_13
    if-nez v9, :cond_39

    if-eqz v8, :cond_39

    iget-object v9, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeepAliveListeners:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;

    check-cast v10, Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    iget-object v11, v10, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v10, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-wide v12, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->SESSION_TIMEOUT_MS:J

    invoke-virtual {v11, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    :cond_20
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto/16 :goto_15

    :sswitch_6
    const-string v6, "keep_alive"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_15

    :cond_21
    const/16 v6, 0xa

    goto/16 :goto_16

    :sswitch_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_15

    :cond_22
    const/16 v6, 0x9

    goto/16 :goto_16

    :sswitch_8
    const-string v6, "edge_lights"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_15

    :cond_23
    const/16 v6, 0x8

    goto/16 :goto_16

    :sswitch_9
    const-string v6, "greeting"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_15

    :cond_24
    const/4 v6, 0x7

    goto :goto_16

    :sswitch_a
    const-string v6, "clear"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_15

    :cond_25
    const/4 v6, 0x6

    goto :goto_16

    :sswitch_b
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_15

    :cond_26
    const/4 v6, 0x5

    goto :goto_16

    :sswitch_c
    const-string v6, "hide_zerostate"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_15

    :cond_27
    const/4 v6, 0x4

    goto :goto_16

    :sswitch_d
    const-string v6, "transcription"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_15

    :cond_28
    const/4 v6, 0x3

    goto :goto_16

    :sswitch_e
    const-string v6, "hide_keyboard"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_15

    :cond_29
    const/4 v6, 0x2

    goto :goto_16

    :sswitch_f
    const-string v6, "show_zerostate"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_15

    :cond_2a
    const/4 v6, 0x1

    goto :goto_16

    :sswitch_10
    const-string v6, "show_keyboard"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_15

    :cond_2b
    const/4 v6, 0x0

    goto :goto_16

    :goto_15
    const/4 v6, -0x1

    :goto_16
    sget-object v9, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v10, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v11, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v13, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mZerostateInfoListeners:Ljava/util/Set;

    iget-object v15, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeyboardInfoListeners:Ljava/util/Set;

    const-string v12, "tap_action"

    packed-switch v6, :pswitch_data_0

    const/4 v11, 0x0

    move v12, v11

    goto/16 :goto_2a

    :cond_2c
    :pswitch_0
    const/4 v9, 0x1

    goto/16 :goto_29

    :pswitch_1
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "speech_confidence"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAudioInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;

    invoke-interface {v3, v2, v1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;->onAudioInfo(FF)V

    goto :goto_17

    :pswitch_2
    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "listening"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mEdgeLightsInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;

    invoke-interface {v3, v2, v1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;->onEdgeLightsInfo(Ljava/lang/String;Z)V

    goto :goto_18

    :pswitch_3
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGreetingInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;

    check-cast v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    iput-object v1, v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    iget-object v5, v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    iget-boolean v6, v5, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    if-eqz v6, :cond_2e

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    goto :goto_1a

    :cond_2e
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    iget v5, v5, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    :goto_1a
    iget-object v6, v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v6, v10, :cond_2f

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_2f

    new-instance v6, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;

    const/4 v11, 0x1

    invoke-direct {v6, v3, v2, v5, v11}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/Object;Ljava/util/Optional;I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v9, v5, v6}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_1b

    :cond_2f
    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;

    invoke-direct {v6, v3, v2, v5}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;I)V

    invoke-virtual {v3, v9, v5, v6}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    :goto_1b
    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    goto :goto_19

    :pswitch_4
    const-string v2, "show_animation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;

    check-cast v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v1, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    goto :goto_1c

    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mChipsInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;

    check-cast v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_30

    goto :goto_21

    :cond_30
    iget-object v3, v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    iget-boolean v5, v3, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    if-eqz v5, :cond_31

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    goto :goto_1e

    :cond_31
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    iget v3, v3, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    :goto_1e
    iget-object v5, v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v6, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v5, v10, :cond_32

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_32

    new-instance v5, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;

    const/4 v12, 0x0

    invoke-direct {v5, v2, v1, v3, v12}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/Object;Ljava/util/Optional;I)V

    invoke-virtual {v2, v6, v12, v5}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_20

    :cond_32
    const/4 v12, 0x0

    iget-object v3, v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-eq v3, v9, :cond_34

    if-ne v3, v11, :cond_33

    goto :goto_1f

    :cond_33
    new-instance v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v1, v5}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;I)V

    invoke-virtual {v2, v6, v12, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_20

    :cond_34
    :goto_1f
    new-instance v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2, v1, v12}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;I)V

    invoke-virtual {v2, v6, v12, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    :goto_20
    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    goto :goto_1d

    :cond_35
    :goto_21
    const/4 v12, 0x0

    const-string v3, "TranscriptionController"

    const-string v5, "Null or empty chip list received; clearing transcription space"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v12, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    goto :goto_1d

    :pswitch_6
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;

    check-cast v1, Lcom/google/android/systemui/assist/uihints/IconController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/systemui/assist/uihints/IconController;->mOnZerostateIconTap:Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    goto :goto_22

    :pswitch_7
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const-string v5, "text_color"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTranscriptionInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;

    check-cast v5, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iput-object v3, v5, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    new-instance v6, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;

    const/4 v9, 0x1

    invoke-direct {v6, v5, v2, v9}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;I)V

    const/4 v10, 0x0

    invoke-virtual {v5, v11, v10, v6}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-virtual {v5}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    iget-object v5, v5, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iput v1, v5, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    invoke-virtual {v5}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    goto :goto_23

    :pswitch_8
    const/4 v9, 0x1

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;

    check-cast v1, Lcom/google/android/systemui/assist/uihints/IconController;

    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/systemui/assist/uihints/IconController;->mOnKeyboardIconTap:Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v1, v3, v11}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    goto :goto_24

    :pswitch_9
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;

    check-cast v2, Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_36

    move v3, v9

    goto :goto_26

    :cond_36
    move v3, v11

    :goto_26
    iput-boolean v3, v2, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    iput-object v0, v2, Lcom/google/android/systemui/assist/uihints/IconController;->mOnZerostateIconTap:Landroid/app/PendingIntent;

    iget-object v5, v2, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    goto :goto_25

    :pswitch_a
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;

    check-cast v2, Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_37

    move v3, v9

    goto :goto_28

    :cond_37
    move v3, v11

    :goto_28
    iput-boolean v3, v2, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    iput-object v0, v2, Lcom/google/android/systemui/assist/uihints/IconController;->mOnKeyboardIconTap:Landroid/app/PendingIntent;

    iget-object v5, v2, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    goto :goto_27

    :cond_38
    :goto_29
    invoke-virtual {v14}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    :cond_39
    move v12, v9

    goto :goto_2a

    :cond_3a
    move-object v4, v9

    move/from16 v33, v10

    move v12, v13

    :goto_2a
    if-nez v12, :cond_3b

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v7, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid action \"%s\" for state:\n  NGA is Assistant = %b\n  SysUI is NGA UI = %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2e7b10 -> :sswitch_5
        0x68c3f3a -> :sswitch_4
        0xb7481de -> :sswitch_3
        0x16202e4c -> :sswitch_2
        0x2e5b5c1e -> :sswitch_1
        0x43053b3d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7a402917 -> :sswitch_10
        -0x799e53d9 -> :sswitch_f
        -0x452d6dbc -> :sswitch_e
        -0xe69036e -> :sswitch_d
        -0xc59a3d4 -> :sswitch_c
        0x5a3f5a7 -> :sswitch_b
        0x5a5b64d -> :sswitch_a
        0xc3e8039 -> :sswitch_9
        0x2dfd7edf -> :sswitch_8
        0x5c547777 -> :sswitch_7
        0x61e8af93 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
