.class public final synthetic Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    iget-object v3, v2, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const-string v6, "systemui.google.opa_enabled"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    iput-boolean v4, v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    sget-object v4, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    new-instance v4, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v4, v3}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    iput-boolean v4, v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    :try_start_0
    iget-object v2, v2, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v4, "systemui.google.opa_user_enabled"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-interface {v2, v4, v7, v6}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "OpaEnabledSettings"

    const-string v6, "isOpaEnabled RemoteException"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v7

    :goto_2
    iput-boolean v2, v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x111002f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assist_long_press_home_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_3

    :cond_2
    move v2, v7

    :goto_3
    iput-boolean v2, v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsLongPressHomeEnabled:Z

    iget-object v2, v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mFgExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p0, :cond_4

    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0, v5, p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
