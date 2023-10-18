.class public Lcom/google/android/systemui/smartspace/IcuDateTextView;
.super Lcom/google/android/systemui/smartspace/DoubleShadowTextView;
.source ""


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

.field public mFormatter:Landroid/icu/text/DateFormat;

.field public mHandler:Landroid/os/Handler;

.field public final mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

.field public mIsAodEnabled:Z

.field public mIsInteractive:Z

.field public mText:Ljava/lang/String;

.field public final mTicker:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

.field public mUpdatesOnAod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/IcuDateTextView$1;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    new-instance p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTicker:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;-><init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 7

    const-string v0, "doze_always_on"

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "IcuDateTextView"

    const-string v5, "Unable to register DOZE_ALWAYS_ON content observer: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v4, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsAodEnabled:Z

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsInteractive:Z

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIntentReceiver:Lcom/google/android/systemui/smartspace/IcuDateTextView$2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/IcuDateTextView$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public final onTimeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f13082b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mFormatter:Landroid/icu/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->rescheduleTicker()V

    return-void
.end method

.method public final rescheduleTicker()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTicker:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsInteractive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsAodEnabled:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTicker:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method public final setUpdatesOnAod()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mUpdatesOnAod:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call before attaching view to window."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
