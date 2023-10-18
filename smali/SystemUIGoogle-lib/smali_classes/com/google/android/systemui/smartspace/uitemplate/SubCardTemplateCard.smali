.class public Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source ""


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0376

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final resetUi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mTextView:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "SubCardTemplateCard"

    const-string p1, "SubCardTemplateData is null or invalid template type"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;->getSubCardIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;->getSubCardIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->setIcon(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;->getSubCardText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v4

    invoke-static {v4}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;->getSubCardText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->setText(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mTextView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;->getSubCardAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;->getSubCardAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v6

    const-string v8, "SubCardTemplateCard"

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    :cond_3
    return v3
.end method

.method public final setTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubCardTemplateCard;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
