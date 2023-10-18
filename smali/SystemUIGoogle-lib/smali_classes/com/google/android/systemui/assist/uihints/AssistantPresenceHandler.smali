.class public final Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mAssistantPresenceChangeListeners:Ljava/util/Set;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mGoogleIsAssistant:Z

.field public mNgaIsAssistant:Z

.field public mSysUiIsNgaUi:Z

.field public final mSysUiIsNgaUiChangeListeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistantPresenceChangeListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUiChangeListeners:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const-string p2, "com.google.android.systemui.assist.uihints.NGA_IS_ASSISTANT"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    const-string p2, "com.google.android.systemui.assist.uihints.SYS_UI_IS_NGA_UI"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    return-void
.end method


# virtual methods
.method public final onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->ngaIsAssistant:Z

    iget-boolean p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->sysUiIsNgaUi:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->updateAssistantPresence(ZZZ)V

    return-void
.end method

.method public final updateAssistantPresence(ZZZ)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    iget-boolean v2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mGoogleIsAssistant:Z

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mContentResolver:Landroid/content/ContentResolver;

    if-ne v2, p1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    if-eq v2, p2, :cond_9

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mGoogleIsAssistant:Z

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    const-string p1, "com.google.android.systemui.assist.uihints.NGA_IS_ASSISTANT"

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistantPresenceChangeListeners:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda1;

    iget-boolean v2, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mGoogleIsAssistant:Z

    iget-boolean v4, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    iget-object p2, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-boolean v5, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mGoogleIsAssistant:Z

    if-ne v5, v2, :cond_3

    iget-boolean v5, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    if-eq v5, v4, :cond_8

    :cond_3
    iget-object v5, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    iget-object v6, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iget-object v7, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iput-object v7, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v6}, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    iget-object v6, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iget-object v7, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mDefaultUiController:Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iput-object v7, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0, v6}, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v5, v7, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    check-cast v5, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    if-eqz v2, :cond_6

    iget v6, v5, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorBlue:I

    iget v7, v5, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorRed:I

    iget v8, v5, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorYellow:I

    iget v9, v5, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorGreen:I

    iput-boolean v1, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    invoke-virtual {v5}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptUnregisterNavBarListener()V

    iget-object v10, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/assist/ui/EdgeLight;

    iget v11, v10, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput v6, v10, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iget-object v6, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/assist/ui/EdgeLight;

    iget v10, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput v7, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iget-object v6, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/assist/ui/EdgeLight;

    iget v7, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput v8, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iget-object v5, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/assist/ui/EdgeLight;

    iget v6, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput v9, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    goto :goto_3

    :cond_6
    iput-boolean v0, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    iget-object v6, v5, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v5}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptRegisterNavBarListener()V

    :cond_7
    :goto_3
    iput-boolean v2, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mGoogleIsAssistant:Z

    iput-boolean v4, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    :cond_8
    iput-boolean v1, p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    goto/16 :goto_2

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    if-eq p1, p3, :cond_b

    iput-boolean p3, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    const-string p1, "com.google.android.systemui.assist.uihints.SYS_UI_IS_NGA_UI"

    invoke-static {v3, p1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUiChangeListeners:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;

    iget-boolean p3, p0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    iget-object p2, p2, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    if-nez p3, :cond_a

    invoke-virtual {p2}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->hide()V

    goto :goto_4

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_b
    return-void
.end method
