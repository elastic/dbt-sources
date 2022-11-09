
with source as (

    select * from {{ source('raw_netsuite', 'itr_statistical_procedure_history') }}

),

renamed as (

    select
        code,
        date_created,
        is_inactive,
        itr_statistical_procedure_exti,
        itr_statistical_procedure_id,
        itr_statistical_procedure_name,
        last_modified_date,
        nexus,
        parent_id,
        type_0

    from source

)

select * from renamed
