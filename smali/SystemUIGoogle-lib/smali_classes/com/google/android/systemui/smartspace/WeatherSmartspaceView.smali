.class public Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAodSettingsObserver:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

.field public mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public mDozeAmount:F

.field public final mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public final mIconSize:I

.field public mIsAodEnabled:Z

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public mPrimaryTextColor:I

.field public final mRemoveTextDescent:Z

.field public final mTextDescentExtraPadding:I

.field public mUiSurface:Ljava/lang/String;

.field public mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "WeatherSmartspaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    new-instance p3, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, p0, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f140256

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/bcsmartspace/R$styleable;->WeatherSmartspaceView:[I

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0702a2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mRemoveTextDescent:Z

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mTextDescentExtraPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconSize:I

    new-instance p2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 6

    const-string v0, "doze_always_on"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    const-string v2, "lockscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WeatherSmartspaceView"

    const-string v4, "Unable to register DOZE_ALWAYS_ON content observer: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v3, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIsAodEnabled:Z

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0883

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    return-void
.end method

.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    const-string v2, "dream"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    if-eq p1, v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v5

    if-nez v5, :cond_4

    return-void

    :cond_4
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v3, "WeatherSmartspaceView"

    invoke-static {v3, v0, p1, v1}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconSize:I

    invoke-static {p1, v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawableWithCustomSize(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mRemoveTextDescent:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mTextDescentExtraPadding:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    sub-int/2addr v0, v3

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_5
    new-instance p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    invoke-static {v4}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v0

    iput v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    iput v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    invoke-static {v2, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->getUid(Landroid/content/pm/PackageManager;Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v0

    iput v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->build()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez p1, :cond_6

    move-object v6, v1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    move-object v6, v0

    :goto_0
    const-string v7, "WeatherSmartspaceView"

    iget-object v8, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-static/range {v3 .. v8}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    return-void
.end method

.method public final registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    return-void
.end method

.method public final setDozeAmount(F)V
    .locals 3

    iput p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    iget v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mPrimaryTextColor:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    invoke-static {v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIsAodEnabled:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget v2, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    iput v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    iget v2, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    iput v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iput p1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iget v1, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    new-instance v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    sget-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, loggingSurface = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WeatherSmartspaceView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    return-void
.end method

.method public final setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method public final setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sIntentStarter:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mPrimaryTextColor:I

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mDozeAmount:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    return-void
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mUiSurface:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call before attaching view to window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
