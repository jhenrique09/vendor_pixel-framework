.class public final synthetic Lcom/google/android/systemui/smartspace/uitemplate/CarouselTemplateCard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    sget p0, Lcom/google/android/systemui/smartspace/uitemplate/CarouselTemplateCard;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getImage()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getLowerText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getUpperText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
