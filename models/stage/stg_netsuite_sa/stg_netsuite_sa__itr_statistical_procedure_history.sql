
with source as (

    select * from {{ source('raw_netsuite_sa', 'itr_statistical_procedure_history') }}

),

renamed as (

    select
        itr_statistical_procedure_id,
        _fivetran_deleted,
        _fivetran_synced,
        code,
        date_created,
        date_deleted,
        is_inactive,
        itr_statistical_procedure_exti,
        itr_statistical_procedure_name,
        last_modified_date,
        nexus,
        parent_id,
        type_0,
        partition_date

    from source

)

select * from renamed
