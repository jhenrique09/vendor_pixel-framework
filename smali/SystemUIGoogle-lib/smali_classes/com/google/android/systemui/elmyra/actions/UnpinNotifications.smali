.class public final Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHasPinnedHeadsUp:Z

.field public final mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

.field public final mHeadsUpManagerOptional:Ljava/util/Optional;

.field public mSilenceSettingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/Optional;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;-><init>(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->updateHeadsUpListener()V

    new-instance p2, Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-string p3, "assist_gesture_silence_alerts_enabled"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;)V

    const/4 p0, 0x1

    invoke-direct {p2, p1, p3, v0, p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "Elmyra/UnpinNotifications"

    const-string p1, "No HeadsUpManager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mSilenceSettingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    new-instance p1, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateHeadsUpListener()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_gesture_silence_alerts_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mSilenceSettingEnabled:Z

    if-eq v1, v3, :cond_3

    iput-boolean v3, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mSilenceSettingEnabled:Z

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_3
    return-void
.end method
