.class public final enum Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_FULFILL_BOTTOM:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_FULFILL_PERIMETER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_FULL_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_UNKNOWN:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/16 v1, 0x249

    const-string v2, "ASSISTANT_SESSION_MODE_GONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/16 v2, 0x24a

    const-string v3, "ASSISTANT_SESSION_MODE_HALF_LISTENING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/16 v3, 0x24b

    const-string v4, "ASSISTANT_SESSION_MODE_FULL_LISTENING"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULL_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/16 v4, 0x24c

    const-string v5, "ASSISTANT_SESSION_MODE_FULFILL_BOTTOM"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_BOTTOM:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v4, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/16 v5, 0x24d

    const-string v6, "ASSISTANT_SESSION_MODE_FULFILL_PERIMETER"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_PERIMETER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v5, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/16 v6, 0x24e

    const-string v7, "ASSISTANT_SESSION_MODE_UNKNOWN"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_UNKNOWN:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->id:I

    return p0
.end method
