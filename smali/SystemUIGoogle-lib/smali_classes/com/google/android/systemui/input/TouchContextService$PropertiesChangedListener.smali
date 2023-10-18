.class public final Lcom/google/android/systemui/input/TouchContextService$PropertiesChangedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/input/TouchContextService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$PropertiesChangedListener;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$PropertiesChangedListener;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    invoke-static {p0, p1}, Lcom/google/android/systemui/input/TouchContextService;->-$$Nest$mconfigPropertiesChanged(Lcom/google/android/systemui/input/TouchContextService;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
