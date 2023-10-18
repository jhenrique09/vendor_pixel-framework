.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Region;)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
