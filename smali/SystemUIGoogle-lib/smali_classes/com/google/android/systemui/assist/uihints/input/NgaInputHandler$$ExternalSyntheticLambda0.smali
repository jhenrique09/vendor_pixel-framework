.class public final synthetic Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;
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

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
