.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source ""


# static fields
.field public static final synthetic $r8$clinit:I


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
    .locals 10

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0268

    invoke-static {v5, v6, v4}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    new-instance v5, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-direct {v5, v2}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(I)V

    aget-object v6, v1, v3

    if-lez v3, :cond_1

    add-int/lit8 v7, v3, -0x1

    aget-object v7, v1, v7

    goto :goto_2

    :cond_1
    move-object v7, v4

    :goto_2
    const/4 v8, 0x3

    if-ge v3, v8, :cond_2

    add-int/lit8 v9, v3, 0x1

    aget-object v9, v1, v9

    goto :goto_3

    :cond_2
    move-object v9, v4

    :goto_3
    if-nez v3, :cond_3

    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v7, 0x1

    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    :goto_4
    if-ne v3, v8, :cond_4

    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_5

    :cond_4
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    :goto_5
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 4

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

    if-eqz p1, :cond_6

    const-string p3, "temperatureValues"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BcSmartspaceCardWeatherForecast"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p2, "Temperature values array is null."

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/Object;)V

    array-length p2, p3

    const p3, 0x7f0a077d

    const-string v3, "temperature value"

    invoke-virtual {p0, v0, p2, p3, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->updateFields(Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;IILjava/lang/String;)V

    :goto_1
    move p2, v2

    :cond_2
    const-string p3, "weatherIcons"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/Bitmap;

    if-nez p2, :cond_3

    const-string p2, "Weather icons array is null."

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance p3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/Object;)V

    array-length p2, p2

    const v0, 0x7f0a0881

    const-string v3, "weather icon"

    invoke-virtual {p0, p3, p2, v0, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->updateFields(Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;IILjava/lang/String;)V

    :goto_2
    move p2, v2

    :cond_4
    const-string p3, "timestamps"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "Timestamps array is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;

    invoke-direct {p2, v2, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/Object;)V

    array-length p1, p1

    const p3, 0x7f0a079e

    const-string v0, "timestamp"

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->updateFields(Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;IILjava/lang/String;)V

    :goto_3
    move p2, v2

    :cond_6
    return p2
.end method

.method public final setTextColor(I)V
    .locals 4

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;-><init>(II)V

    const v1, 0x7f0a077d

    const-string v2, "temperature value"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->updateFields(Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;-><init>(II)V

    const p1, 0x7f0a079e

    const-string v1, "timestamp"

    invoke-virtual {p0, v0, v3, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->updateFields(Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;IILjava/lang/String;)V

    return-void
.end method

.method public final updateFields(Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;IILjava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, "Missing %d "

    const-string v2, "BcSmartspaceCardWeatherForecast"

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, " view(s) to update."

    invoke-static {v1, p4, p2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ge p2, v3, :cond_5

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "(s). Hiding incomplete columns."

    invoke-static {v1, p4, v6}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v6, p2, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "Missing %d columns to update."

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    rsub-int/lit8 v1, v6, 0x3

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-gt v5, v1, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    const/16 v8, 0x8

    :goto_1
    invoke-static {v7, v8}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez v6, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    :cond_5
    :goto_3
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_4
    if-ge v4, p2, :cond_7

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "Missing "

    const-string p2, " view to update at column: %d."

    invoke-static {p1, p4, p2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-interface {p1, v1, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;->update(Landroid/view/View;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method
