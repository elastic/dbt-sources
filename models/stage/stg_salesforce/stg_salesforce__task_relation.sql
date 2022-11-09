
with source as (

    select * from {{ source('raw_salesforce', 'task_relation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        created_by_id,
        created_date,
        is_deleted,
        is_what,
        last_modified_by_id,
        last_modified_date,
        relation_id,
        system_modstamp,
        task_id

    from source

)

select * from renamed
