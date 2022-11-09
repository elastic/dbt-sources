
with source as (

    select * from {{ source('raw_salesforce', 'mlmodel_factor') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        correlation,
        created_by_id,
        created_date,
        factor_type,
        importance,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        model_id,
        name,
        system_modstamp,
        type,
        weight

    from source

)

select * from renamed
