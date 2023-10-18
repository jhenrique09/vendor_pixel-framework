.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source ""


# instance fields
.field public mFirstCompetitorLogo:Landroid/widget/ImageView;

.field public mFirstCompetitorScore:Landroid/widget/TextView;

.field public mSecondCompetitorLogo:Landroid/widget/ImageView;

.field public mSecondCompetitorScore:Landroid/widget/TextView;

.field public mSummaryView:Landroid/widget/TextView;


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

    const v0, 0x7f0a0455

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorScore:Landroid/widget/TextView;

    const v0, 0x7f0a067d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorScore:Landroid/widget/TextView;

    const v0, 0x7f0a02ea

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorLogo:Landroid/widget/ImageView;

    const v0, 0x7f0a067c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorLogo:Landroid/widget/ImageView;

    return-void
.end method

.method public final resetUi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorScore:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorScore:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorLogo:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorLogo:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_b

    const-string p3, "matchTimeSummary"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BcSmartspaceCardSports"

    if-eqz v0, :cond_2

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string p3, "No match time summary view to update"

    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {v0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move p3, v1

    goto :goto_2

    :cond_2
    move p3, p2

    :goto_2
    const-string v0, "firstCompetitorScore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "No first competitor logo view to update"

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorScore:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-static {v0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorScore:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move p3, v1

    :cond_4
    const-string v0, "secondCompetitorScore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "No second competitor logo view to update"

    if-eqz v3, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorScore:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-static {v0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorScore:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move p3, v1

    :cond_6
    const-string v0, "firstCompetitorLogo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorLogo:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    invoke-static {v0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    move p3, v1

    :cond_8
    const-string v0, "secondCompetitorLogo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorLogo:Landroid/widget/ImageView;

    if-nez p3, :cond_9

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    invoke-static {p3, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_6
    move p2, v1

    goto :goto_7

    :cond_a
    move p2, p3

    :cond_b
    :goto_7
    return p2
.end method

.method public final setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mFirstCompetitorScore:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSports;->mSecondCompetitorScore:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
