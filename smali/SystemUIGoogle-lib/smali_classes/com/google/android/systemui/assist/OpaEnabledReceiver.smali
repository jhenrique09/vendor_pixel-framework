.class public final Lcom/google/android/systemui/assist/OpaEnabledReceiver;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBroadcastReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

.field public final mContentObserver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mFgExecutor:Ljava/util/concurrent/Executor;

.field public mIsAGSAAssistant:Z

.field public mIsLongPressHomeEnabled:Z

.field public mIsOpaEligible:Z

.field public mIsOpaEnabled:Z

.field public final mListeners:Ljava/util/List;

.field public final mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/google/android/systemui/assist/OpaEnabledSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentObserver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;

    iput-object p2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mFgExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mOpaEnabledSettings:Lcom/google/android/systemui/assist/OpaEnabledSettings;

    iput-object p4, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    const-string p2, "assistant"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {v0, p2, p1, v1, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p2, "assist_long_press_home_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, p1, v1, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, p3}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->registerEnabledReceiver(I)V

    return-void
.end method


# virtual methods
.method public final dispatchOpaEnabledState(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dispatching OPA eligble = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; AGSA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; OPA enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpaEnabledReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mListeners:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/systemui/assist/OpaEnabledListener;

    iget-boolean v4, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEligible:Z

    iget-boolean v5, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsAGSAAssistant:Z

    iget-boolean v6, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsOpaEnabled:Z

    iget-boolean v7, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mIsLongPressHomeEnabled:Z

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaEnabledListener;->onOpaEnabledReceived(Landroid/content/Context;ZZZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    return-object p0
.end method

.method public final registerEnabledReceiver(I)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.systemui.OPA_ENABLED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p1}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v10, Landroid/content/IntentFilter;

    const-string p1, "com.google.android.systemui.OPA_USER_ENABLED"

    invoke-direct {v10, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v11, "android.permission.CAPTURE_AUDIO_HOTWORD"

    iget-object v12, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final updateOpaEnabledState(ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
