.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$ItemUpdateFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Landroid/view/View;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast$$ExternalSyntheticLambda0;->f$0:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :goto_0
    sget p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->$r8$clinit:I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
