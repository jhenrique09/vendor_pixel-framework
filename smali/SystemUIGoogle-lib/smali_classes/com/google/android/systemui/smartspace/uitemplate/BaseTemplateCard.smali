.class public Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# instance fields
.field public mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public mDndImageView:Landroid/widget/ImageView;

.field public mDozeAmount:F

.field public mExtrasGroup:Landroid/view/ViewGroup;

.field public mFeatureType:I

.field public mIconTintColor:I

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public mNextAlarmImageView:Landroid/widget/ImageView;

.field public mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mPrevSmartspaceTargetId:Ljava/lang/String;

.field public mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

.field public mSecondaryCardPane:Landroid/view/ViewGroup;

.field public mShouldShowPageIndicator:Z

.field public mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mTarget:Landroid/app/smartspace/SmartspaceTarget;

.field public mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field public mTextGroup:Landroid/view/ViewGroup;

.field public mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mUiSurface:Ljava/lang/String;

.field public mValidSecondaryCard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mFeatureType:I

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v2, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mPrevSmartspaceTargetId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const-string p0, "persist.sysui.ss.dw_decoupled"

    const/4 p2, 0x1

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p1, 0x7f140257

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p1, 0x7f140256

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    return-void
.end method

.method public static shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/Icon;->shouldTint()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0787

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a0682

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    const v0, 0x7f0a07a6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a0724

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a0105

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a06d7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0090

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0756

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    :cond_0
    return-void
.end method

.method public final resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V

    return-void
.end method

.method public final setDozeAmount(F)V
    .locals 5

    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v2, :cond_0

    const-string v2, "hide_title_on_aod"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    sub-float v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v2, :cond_1

    const-string v2, "hide_subtitle_on_aod"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mValidSecondaryCard:Z

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    const/16 v4, 0x8

    if-eqz v0, :cond_6

    move v2, v4

    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_8

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    :goto_2
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSecondaryCardPane:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDozeAmount:F

    sub-float p0, v1, p0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr p0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTextGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_3
    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSubtitleSupplementalView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateZenColors()V

    return-void
.end method

.method public final setUpTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;)V
    .locals 9

    const-string v0, "SsBaseTemplateCard"

    if-nez p1, :cond_0

    const-string p0, "No text view can be set up"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->resetTextView(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    if-nez p2, :cond_1

    const-string p0, "Passed-in item info is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    invoke-static {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->setText(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    invoke-static {v1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    invoke-virtual {p1, v2}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_2
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, p1, v1, v4}, Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;->setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->shouldTint()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V

    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v3

    const-string v5, "SsBaseTemplateCard"

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    if-eqz v6, :cond_7

    iget-object v1, v6, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget v4, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    if-ne v1, v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object p2

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;

    iget v7, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mInstanceId:I

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v7

    iget v4, v4, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardMetadataLoggingInfo;->mCardTypeId:I

    if-ne v4, v7, :cond_6

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    move v7, v0

    move-object v1, p1

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener$1(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;I)V

    return-void
.end method

.method public final updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateZenColors()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mIconTintColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->shouldTint(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateTextViewIconTint(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_3
    return-void
.end method

.method public final updateZenVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDndImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mNextAlarmImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mSupplementalLineTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mShouldShowPageIndicator:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->mExtrasGroup:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->updateZenColors()V

    :goto_4
    return-void
.end method
