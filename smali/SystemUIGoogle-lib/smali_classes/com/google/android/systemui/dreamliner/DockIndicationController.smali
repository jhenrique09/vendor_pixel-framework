.class public final Lcom/google/android/systemui/dreamliner/DockIndicationController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field static final ACTION_ASSISTANT_POODLE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ASSISTANT_POODLE"

.field public static final KEYGUARD_INDICATION_TIMEOUT_MILLIS:J

.field public static final PROMO_SHOWING_TIME_MILLIS:J


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAmbientIndicationContainer:Landroid/widget/LinearLayout;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public final mDisableLiveRegionRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

.field mDockPromo:Landroid/widget/FrameLayout;

.field mDockedTopIcon:Landroid/widget/ImageView;

.field public mDocking:Z

.field public mDozing:Z

.field public final mHidePromoAnimation:Landroid/view/animation/Animation;

.field public final mHidePromoRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

.field mIconViewsValidated:Z

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public mPromoText:Landroid/widget/TextView;

.field public mShowPromo:Z

.field public final mShowPromoAnimation:Landroid/view/animation/Animation;

.field public mShowPromoTimes:I

.field public mStatusBarState:I

.field public mTopIconShowing:Z

.field public mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->PROMO_SHOWING_TIME_MILLIS:J

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->KEYGUARD_INDICATION_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p5, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    check-cast p4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p2, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;I)V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;I)V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDisableLiveRegionRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    const p2, 0x7f010216

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoAnimation:Landroid/view/animation/Animation;

    new-instance p5, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;

    invoke-direct {p5, p0, p3}, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;I)V

    invoke-virtual {p2, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p2, 0x7f010217

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoAnimation:Landroid/view/animation/Animation;

    new-instance p3, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;

    invoke-direct {p3, p0, p4}, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;I)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public initializeIconViews()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    const v2, 0x7f0806c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    const v3, 0x7f130040

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a026b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    const v1, 0x7f0a058f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mPromoText:Landroid/widget/TextView;

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v1, 0x7f0a03b5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAmbientIndicationContainer:Landroid/widget/LinearLayout;

    iput-boolean v5, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a026e

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.systemui.dreamliner.ASSISTANT_POODLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot send event for intent= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DLIndicator"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateLiveRegionIfNeeded()V

    iget-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    :goto_0
    return-void
.end method

.method public final onLocaleListChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->initializeIconViews()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mPromoText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f130322

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mStatusBarState:I

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->updateVisibility()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final showPromoInner()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    :cond_0
    return-void
.end method

.method public final updateLiveRegionIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAccessibilityLiveRegion()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDisableLiveRegionRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDisableLiveRegionRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    sget-wide v2, Lcom/google/android/systemui/dreamliner/DockIndicationController;->KEYGUARD_INDICATION_TIMEOUT_MILLIS:J

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v2, p0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_2
    return-void
.end method

.method public final updateVisibility()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mIconViewsValidated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->initializeIconViews()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIconShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockedTopIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mStatusBarState:I

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    :goto_2
    move v1, v3

    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAmbientIndicationContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAmbientIndicationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAmbientIndicationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v1, v3, :cond_8

    goto :goto_4

    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAmbientIndicationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_9
    :goto_4
    return-void
.end method
