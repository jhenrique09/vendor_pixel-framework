.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, [Ljava/lang/String;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    check-cast p0, [Ljava/lang/String;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :goto_0
    check-cast p0, [Landroid/graphics/Bitmap;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/ImageView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
